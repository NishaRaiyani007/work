using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dal
{
    public class clsDataAccess
    {
        public clsDataAccess()
        { }
        public struct SPParams
        {
            public int intSize;
            public string strValue;
            public string strDbType;
            public string strFieldName;
            public string strDirection;
        }

        private static string GetDSN()
        {

            //  string strDSN = "Provider=SQLOLEDB;server=(local);uid=newots;pwd=ots;database=NewOts";
            string strDSN = ConfigurationSettings.AppSettings["database"];
            return strDSN;
        }
        public static void AssignValues(ref SPParams objParam, string strFieldName, string strDbType, string strDirection, int intValue)
        {
            objParam.strFieldName = strFieldName;
            objParam.strDbType = strDbType;
            objParam.strDirection = strDirection;
            objParam.strValue = intValue.ToString();
            objParam.intSize = 0;
        }
        public static void AssignValues(ref SPParams objParam, string strFieldName, string strDbType, string strDirection, string strValue, int intSize)
        {
            objParam.strFieldName = strFieldName;
            objParam.strDbType = strDbType;
            objParam.strDirection = strDirection;
            objParam.strValue = strValue;
            objParam.intSize = intSize;
        }

        #region Return Status and Output parameters
        public class clsReturnStatus
        {
            public clsReturnStatus()
            { }
            public string[] ExecuteProcedure(string strSPName, SPParams[] objParams)
            {
                string[] arrstrRet;
                SqlConnection con = new SqlConnection();

                try
                {
                    int intOutputParamCount = 0;

                    con = new SqlConnection(clsDataAccess.GetDSN());
                    SqlCommand cmd = new SqlCommand();


                    cmd.CommandText = strSPName;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;



                    SqlParameter parReturn = new SqlParameter("@iReturn", SqlDbType.NVarChar);

                    parReturn.Direction = ParameterDirection.ReturnValue;
                    cmd.Parameters.Add(parReturn);

                    foreach (SPParams objSPParam in objParams)
                    {
                        SqlParameter parSP = new SqlParameter(objSPParam.strFieldName, objSPParam.strDbType);
                        parSP.Size = objSPParam.intSize;

                        if (objSPParam.strDirection == "Input")
                        {
                            parSP.Direction = ParameterDirection.Input;
                            parSP.Value = objSPParam.strValue;
                        }
                        else if (objSPParam.strDirection == "Output")
                        {
                            parSP.Direction = ParameterDirection.Output;
                            intOutputParamCount++;
                        }

                        cmd.Parameters.Add(parSP);
                    }

                    con.Open();
                    cmd.ExecuteNonQuery();

                    arrstrRet = new string[intOutputParamCount + 1];
                    int intIdx = 0;
                    arrstrRet[intIdx++] = parReturn.Value.ToString();

                    foreach (SqlParameter parSP in cmd.Parameters)
                    {
                        if (parSP.Direction == ParameterDirection.Output)
                        {
                            arrstrRet[intIdx++] = parSP.Value.ToString();
                        }
                    }

                    return arrstrRet;
                }
                catch (Exception ex)
                {
                    throw new Exception(" DAL Error - " + strSPName + ":" + ex.Message);
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                        con.Dispose();
                    }
                }
            }
            public string[][] ExecuteProcedure(string[] strSPName, SPParams[][] objParams)
            {
                string[][] arrstrRet;
                SqlConnection con = new SqlConnection();

                try
                {
                    int intOutputParamCount;

                    con = new SqlConnection(clsDataAccess.GetDSN());
                    arrstrRet = new string[strSPName.Length][];

                    for (int intIdx = 0; intIdx < strSPName.Length; intIdx++)
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = strSPName[intIdx];
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter parReturn = new SqlParameter("@iReturn", SqlDbType.NVarChar);
                        parReturn.Direction = ParameterDirection.ReturnValue;
                        cmd.Parameters.Add(parReturn);

                        intOutputParamCount = 0;

                        foreach (SPParams objSPParam in objParams[intIdx])
                        {
                            SqlParameter parSP = new SqlParameter(objSPParam.strFieldName, objSPParam.strDbType);
                            parSP.Size = objSPParam.intSize;

                            if (objSPParam.strDirection == "Input")
                            {
                                parSP.Direction = ParameterDirection.Input;
                                parSP.Value = objSPParam.strValue;
                            }
                            else if (objSPParam.strDirection == "Output")
                            {
                                parSP.Direction = ParameterDirection.Output;
                                intOutputParamCount++;
                            }

                            cmd.Parameters.Add(parSP);
                        }

                        con.Open();
                        cmd.ExecuteNonQuery();

                        arrstrRet[intIdx] = new string[intOutputParamCount + 1];
                        int intLoopVar = 2;
                        arrstrRet[intIdx][0] = parReturn.Value.ToString();

                        foreach (SqlParameter parSP in cmd.Parameters)
                        {
                            if (parSP.Direction == ParameterDirection.Output)
                            {
                                arrstrRet[intIdx][intLoopVar++] = parSP.Value.ToString();
                            }
                        }

                        cmd.Dispose();
                    }

                    return arrstrRet;
                }
                catch (Exception ex)
                {
                    throw new Exception(" DAL Error - " + strSPName + ":" + ex.Message);
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                        con.Dispose();
                    }
                }
            }

        }
        #endregion
        #region Return DataSet
        public class clsReturnDataSet
        {
            public clsReturnDataSet()
            { }
            public DataSet ExecuteProcedure(string strSPName, SPParams[] objParams)
            {
                int intOutputParamCount = 0;
                string strRet = "";
                DataSet dsReturn = new DataSet("ResultSet");
                SqlConnection con = new SqlConnection();


                try
                {
                    con = new SqlConnection(clsDataAccess.GetDSN());
                    SqlCommand cmd = new SqlCommand();

                    cmd.CommandText = strSPName;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter parReturn = new SqlParameter("@iReturn", SqlDbType.NVarChar);
                    parReturn.Direction = ParameterDirection.ReturnValue;
                    cmd.Parameters.Add(parReturn);

                    foreach (SPParams objSPParam in objParams)
                    {
                        SqlParameter parSP = new SqlParameter(objSPParam.strFieldName, objSPParam.strDbType);
                        parSP.Size = objSPParam.intSize;

                        if (objSPParam.strDirection == "Input")
                        {
                            parSP.Direction = ParameterDirection.Input;
                            parSP.Value = objSPParam.strValue;
                        }
                        else if (objSPParam.strDirection == "Output")
                        {
                            parSP.Direction = ParameterDirection.Output;
                            intOutputParamCount++;
                        }

                        cmd.Parameters.Add(parSP);
                    }

                    con.Open();
                    SqlDataAdapter daReturn = new SqlDataAdapter(cmd);
                    daReturn.Fill(dsReturn, "DataTable");
                    if (intOutputParamCount > 0)
                    {
                        DataTable dtbOutput = new DataTable("OutputTable");
                        dtbOutput.Columns.Add("Value", Type.GetType("System.String"));
                        foreach (SqlParameter parSP in cmd.Parameters)
                        {
                            if (parSP.Direction == ParameterDirection.Output)
                            {
                                DataRow drow = dtbOutput.NewRow();
                                drow[0] = parSP.Value.ToString();
                                dtbOutput.Rows.Add(drow);
                            }
                        }
                        dsReturn.Tables.Add(dtbOutput);
                    }

                    strRet = parReturn.Value.ToString();

                    return dsReturn;
                }
                catch (Exception ex)
                {
                    throw new Exception(" DAL Error - " + strSPName + ":" + ex.Message);
                }
                finally
                {
                    if (strRet.ToString() != "0")
                    {
                        DataTable dtbError = new DataTable("ErrorTable");
                        dtbError.Columns.Add("ErrorCode", Type.GetType("System.String"));
                        DataRow drow = dtbError.NewRow();
                        drow[0] = strRet;
                        dtbError.Rows.Add(drow);
                        dsReturn.Tables.Add(dtbError);
                    }
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                        con.Dispose();
                    }
                }
            }
        }
        #endregion


    }
}
