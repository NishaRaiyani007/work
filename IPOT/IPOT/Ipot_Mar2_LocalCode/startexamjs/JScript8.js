var glindex = 1; var qMap = new Array(); var qMap1 = new Array(); var gqno = 0; var sectionObj = new Object(); var issue_categoryObj = new Object(); var qMap3 = new Array(); var qstateArray = new Array(); var gcq = 0; var sectTitle = new Array(); var sectTitle1 = new Array(); var sectR = new Array(); var totalsections = 0; var qTimeArray = new Array(); var tmq = 0; var tsec = 0; var action = 1;
var hour_minute = new Array(); var milisec = 0; var seconds = 0; var minu = 0; var hour = 0; var rfs = 0; var attempt_summary = new Array(); var tot_na = 0; var tot_att = 0; var tot_flg = 0; var timer_is_on = 0; var showHideFlag = 1; /* show */var sectionalQ = new Array(); var qsourceArray = new Array(); var qtopicArray = new Array(); var qsubjectArray = new Array(); var tfnsdflg = 0; var psArray = new Array(); var psindx = 0; var rf = 1; var tanlnk = ''; var vidInfo = ''; var minimal = '0'; var p = new Array(); var gsols = ''; var vidSols = new Array();

$(document).ready(function() {

    //eventTracker('Test Player',$('.stn_name').text()+' is on test player window'); 					   
    $("#initiload").remove();
    $("#analysis_section").hide();
    if (rfs == 0) {
        //window.close();	
    }
    $('#start_test').hide();
    $('.quick_review_bt').click(function() {
        quick_review_toggle();

    });
    $("#inline2").css('width', 350);
    $("#various2").fancybox({
        'modal': true,
        'autoScale': true
    });
    $("#various2").trigger('click');
    $("#inline2").css('width', 350);

    showRecaptcha();
    //navigation functions starts here
    $("#qnext").click(function() {

        gcq = gcq + 1;
        var sectionno = 0;
        if ((gcq + 1) > gqno) {
            $("#qnext").hide();

        } else {
            $("#qnext").show();
        }

        if (gcq == 1) {
            $("#qprev").hide();
        } else {
            $("#qprev").show();
        }

        if (qMap[gcq]) {

            sectionno = get_section(gcq);
            qdataObj = eval(qMap[gcq]);
            if (qdataObj.qdata.nar) { //two column
                attachLayout('2', qdataObj);
            } else {
                attachLayout('1', qdataObj);
            }
            $("#spanqno").html(gcq + ' / ' + gqno);

            detach_timer();
            var compnt = qMap1[gcq].split('-')
            record_time(gcq, sectionno, compnt[1]);
            synchQuestinOptionsRL(gcq);
            //fillTxtBox(gcq);
            show_hide_clear_action(gcq);

            if (action == 1) {
                //window.location.hash = "#RGT"+gcq;		
            }

            toggle_flag(gcq);
            if (action != 1) { //reset to next prev
                action = 1;
            }
            if (tfnsdflg == 1) {
                //var obtainedmarks = get_obatined_marks(eval(qMap[gcq]));
                //$("#obtainedmarks").html(obtainedmarks);
            }
            show_qimages();
            $('.demo_basic').poshytip();
            if (showHideFlag == 0) { //hide							 
                $(".quick_review02").css('display', 'none');
                $(".content").css('width', '96%');
            }
            update_summary();
            show_share_widget(gcq, qdataObj.qmeta.ql);
            //eventTracker('Test Player',$('.stn_name').text()+' is gone for next qno '+gcq); 
        }
    });



    $("#qprev").click(function() {
        gcq = gcq - 1;
        var sectionno = 0;
        if ((gcq - 1) < 1) {
            $("#qprev").hide();
        }
        if (qMap[gcq]) {
            sectionno = get_section(gcq);
            $("#qnext").show();
            qdataObj = eval(qMap[gcq]);
            if (qdataObj.qdata.nar) { //two column
                attachLayout('2', qdataObj);
            } else {
                attachLayout('1', qdataObj);
            }
            show_hide_clear_action(gcq);
            $("#spanqno").html(gcq + ' / ' + gqno);
            //window.location.hash = "#RGT"+gcq;
            detach_timer();
            var compnt = qMap1[gcq].split('-')
            record_time(gcq, sectionno, compnt[1]);
            synchQuestinOptionsRL(gcq);
            if (tfnsdflg == 1) {
                //var obtainedmarks = get_obatined_marks(eval(qMap[gcq]));
                //$("#obtainedmarks").html(obtainedmarks);
            }
            show_qimages();
            $('.demo_basic').poshytip();

            if (showHideFlag == 0) { //hide							 
                $(".quick_review02").css('display', 'none');
                $(".content").css('width', '96%');
            }
            show_share_widget(gcq, qdataObj.qmeta.ql);
            update_summary();
            //eventTracker('Test Player',$('.stn_name').text()+' is gone for prev qno '+gcq); 
        }

    });

    $("#start_test").click(function() {

        $('#msg').html('..');
        if ($('#recaptcha_response_field').val() == '') {
            $('#msg').html('<h3>Please fill the captcha code.</h3>');
            //return false;
        }
        $('#msg').html('');
        var query_string = "";
        query_string += "&tid=" + tid;
        query_string += "&dt=" + endt;
        query_string += "&recaptcha_challenge_field=" + $('#recaptcha_challenge_field').val();
        query_string += "&recaptcha_response_field=" + $('#recaptcha_response_field').val();
        $('#loader').html("<img src='" + stconurl + "images/loader_testvv.gif' alt='loader' />");
        $('#start_test').hide();
        $('#gotoweb').hide();

        $.ajax({
            type: "POST",
            url: rghtnow,
            data: query_string,
            success:
					function(t) {
					    $('#loader').html('');
					    if (t == 1035) {
					        $('#captchadiv').html("<div align='center'><h3>Please signed in before taking tests.</h3></div>");
					        $('#captchadiv').append("<div align='center'><a href='javascript:void(0);' onclick='window.close();'>Close</a></div>");

					        return false;
					    } else if (t == 1034) {
					        $('#captchadiv').html("<div align='center'><h3>Your Attempt over.</h3></div>");
					        $('#captchadiv').append("<div align='center'><a href='javascript:void(0);' onclick='window.close();'>Close</a></div>");
					        return false;
					    } else if (t == 1031) {
					        $('#captchadiv').html("<div align='center'><h3>Test window is not active.</h3></div>");
					        $('#captchadiv').append("<div align='center'><a href='javascript:void(0);' onclick='window.close();'>Close</a></div>");
					        return false;
					    } else if (t == 1032) {
					        $('#captchadiv').html("<div align='center'><h3>Test series Over.</h3></div>");
					        $('#captchadiv').append("<div align='center'><a href='javascript:void(0);' onclick='window.close();'>Close</a></div>");
					        return false;
					    } else if (t == 1033) {
					        $('#captchadiv').html("<div align='center'><h3>Not found.</h3></div>");
					        $('#captchadiv').append("<div align='center'><a href='javascript:void(0);' onclick='window.close();'>Close</a></div>");
					        return false;
					    } else if (t == 1 || t == 2 || t == 3) {
					        $('#msg').html('<h3>Please try again.</h3>');
					        showRecaptcha();
					        $('#start_test').show();
					        $('#gotoweb').show();
					    } else if (t == 4) {
					        $('#msg').html('<h3>Invalid captcha code.</h3>');
					        showRecaptcha();
					        $('#start_test').show();
					        $('#gotoweb').show();
					    } else {
					        if (isresume == 0) {
					            start();
					        } else {
					            resume();
					        }
					        $("#footer").show();
					        $("#slider").show();
					        $(".section01").show();
					        $(".quick_review").show();
					        if (sbt == 1) {
					            $("#toolbar").show();
					        }
					        $("#inline2").html('');
					        $.fancybox.close();
					        start_timer();
					        display();
					        $('#submit_confirm').show();
					        direct_view(0, 1);
					        imloaded();
					        //eventTracker('Test Player',$('.stn_name').text()+' started test'); 							 
					    }
					},
            error:
					function(xhr) {
					    $('#msg').html('<h3>Please try again.</h3>');
					    showRecaptcha();
					    $('#loader').html("");
					    $('#start_test').show();
					    $('#gotoweb').show();
					}
        });
    });
    //navigation functions ends here
    $("#submit_confirm").click(function() {
        $("#inline2").html("<span class='our_title'>Please confirm</span><span class='for_close'><a href='#'></a></span><div class='alert_wrapper' align='center'>Are you sure you want to submit the test?<br /><br /><br /><span id='msubmittest'><button onclick='submit_handler(1);' id='submit'>Yes</button>&nbsp;&nbsp;<button onclick='javascript:close_conf_box();'>No</button></span><br /><br /></div>");
        //eventTracker('Test Player',$('.stn_name').text()+' is ready to submit the test.'); 	 
        $("#various2").trigger('click');

    });

}); //document.ready 	



//navigation related functions starts here 
function direct_view(qno, paramaction) {
    gcq = qno;
    action = paramaction;

    $("#qnext").trigger('click');
}
//navigation related functions ends here

//Main canvas related function starts here	
function attach_layout_to_other_info(qno) {
    //var qdataObj = eval(qMap[qno]);				
    var template = new Array();
    var qsourcetemplate = '';

    var qtype = get_qustion_type(qno); //qtype[0] - type ; qtype[1] = description			 
    var qtypetemplate = "<li class='demo_basic' title='" + qtype[1] + "'>" + qtype[0] + "</li>";
    template[0] = qtypetemplate;

    $.each(qdataObj.qmeta.sources, function(index, source) {
        qsourcetemplate += source;
    });

    qsourcetemplate = "<li class='demo_basic' title='" + qsourcetemplate + "'>" + qsourcetemplate + "</li>";
    template[1] = qsourcetemplate;

    var qmarking = get_marking(qno);
    if (qmarking != false) {

        var incp = '/ - ' + qmarking[1];
        if (qmarking[1] == 0) {
            incp = '';
        }
        var qqmarkingtemplate = "<li class='demo_basic' title='" + qmarking[3] + "'>+ " + qmarking[0] + " " + incp + "</li>";
        template[2] = qqmarkingtemplate;
    } else {
        template[2] = '';
    }
    template[3] = '';
    if (tfnsdflg == 1) {

        var legendclass = get_legend(qdataObj);
        template[3] = legendclass;
    }

    $.each(qdataObj.qmeta.topic, function(index, topic) {
        var tmptopic = topic;
        if (topic.length > 20) {
            tmptopic = tmptopic.substr(0, 20) + '...';
        }
        var topicStyle = "display:none;";
        if (tfnsdflg == 1) {
            topicStyle = "display:block;";
        }
        qtopictemplate = "<li class='demo_basic' title='" + topic + "' style='" + topicStyle + "'>" + tmptopic + "</li>";
    });

    template[4] = qtopictemplate;
    template[5] = '';
    if (tfnsdflg == 0) {
        if (avs == 1) {
            template[5] = "<div style='float:right;' class='av_tooltip'><span class='demo_basic' title='Audio Video Solution if any ,<br/> can be viewed in the analysis section<br/> after submiting the test' >Audio Video Solution </span></div><div style='clear:both'></div>";
        }
    }
    return template;
}

function get_marking(qno) {
    var qdataObj = eval(qMap[qno]);
    var markingInfo = new Array();
    if (typeof qdataObj.qmeta.cp != "undefined" && qdataObj.qmeta.cp == 0) {
        return false;
    } else if (typeof qdataObj.qmeta.cp != "undefined" && qdataObj.qmeta.cp) {
        markingInfo[0] = parseInt(qdataObj.qmeta.cp);
        markingInfo[1] = parseInt(qdataObj.qmeta.incp);
        if (markingInfo[1] == 0) {
            markingInfo[3] = ' + ' + qdataObj.qmeta.cp + ' marks for correct answer <br/>&nbsp;&nbsp;&nbsp;No negative marking'; //description
        } else {
            markingInfo[3] = ' + ' + qdataObj.qmeta.cp + ' marks for correct answer <br> - ' + markingInfo[1] + ' mark for incorrect answer'; //description
        }
        return markingInfo;
    } else {
        return false;
    }
}

function decmaker(qdataObj) {
    switch (parseInt(qdataObj.qmeta.qtype)) {
        case 1: //multiple_choice
            return render_multiple_choice_layout(qdataObj);
            break;
        case 2: //multiple_answers
            return render_multiple_answers_layout(qdataObj);
            break;
        case 3: //match_the_column
            return render_match_the_column_layout(qdataObj);
            break;
        case 4: //numeric_response
            return render_numeric_response_layout(qdataObj);
            break;
    }
}


function attachLayout(theme, qdataObj) {
    var renderedOptions = decmaker(qdataObj);
    var otherInfo = new Array();

    var share = "<span class='sharewidget' id='share'></span>";
    var report_an_issue = '';
    if (ranis == 1) {
        var report_an_issue = "<br/><br/><br/><div class='report_issue'><a href='javascript:void(0);  'title='Report an issue'  onclick='show_issue_form(gcq,qdataObj,this);'>Report an issue</a></div><span id='issue" + gcq + "'></span>";
    }
    var clearopt = "<a href='javascript:void(0);' class='clear_active' onclick='clearOptions(" + (gcq) + ");'>Clear</a>";

    if ($("#Rflag" + gcq).hasClass('unmarked')) {
        if (tfnsdflg == 1) {
            var flagopt = "<a href='javascript:void(0);' id='Lflag" + gcq + "' class='unmarked'>&nbsp;</a>";
        } else {
            var flagopt = "<a href='javascript:void(0);' id='Lflag" + gcq + "' class='unmarked' onclick='direct_view(" + (gcq - 1) + ",2);'>&nbsp;</a>";
        }
    } else {
        if (tfnsdflg == 1) {
            var flagopt = "<a href='javascript:void(0);' id='Lflag" + gcq + "' class='marked' >&nbsp;</a>";
        } else {
            var flagopt = "<a href='javascript:void(0);' id='Lflag" + gcq + "' class='marked' onclick='direct_view(" + (gcq - 1) + ",2);'>&nbsp;</a>";
        }
    }


    otherInfo = attach_layout_to_other_info(gcq); //question_type, sources, marking			
    var otherInofString = otherInfo[5] + "<div id='LGT" + gcq + "' class='info'><span style='position:absolute; top:0px; left:35px;'>" + clearopt + "</span><ul>" + otherInfo[4] + otherInfo[0] + otherInfo[1] + otherInfo[2] + "<li title='Flag' style='cursor:pointer'>" + flagopt + "</li></ul></div>";
    var questiontext = qdataObj.qdata.qtxt;
    var tblclass = '';
    if (qdataObj.qmeta.qtype == 3) {
        questiontext = qdataObj.qdata.qtxt;
        tblclass = "class='table_border'";
    }
    var obtainedmarks = '';
    var commonArea = "";
    var soltemplate = '';
    vidSols = new Array();
    if (tfnsdflg == 1) {
        soltemplate = solutionTemplate(eval(qMap[gcq]));
        obtainedmarks = get_obatined_marks(eval(qMap[gcq]));
        commonArea = "<div class='solution_av' style='display:none;'><div style='float:left;'><span id='videoDiv' style='float:left;'></span></div><div style='float:left;' id='solprovinfo'></div></div><div align='center'><span class='solution' id='solutiontab'></span></div>";
        //alert(isQAttmptd);
    }

    if (theme == 1) { //onecol				
        $('.spanclass').html(commonArea + "<div id='qa' class='content' style='position:absolute;'><div class='regular_test_view'><table border='0' width='100%' class='question_tbl'><tr><td><span class='" + otherInfo[3] + "'></span><span class='question_no'>Question - " + gcq + " </span> " + obtainedmarks + "</td></tr><tr><td " + tblclass + ">" + questiontext + "</td></tr></table>" + renderedOptions + otherInofString + report_an_issue + share + soltemplate + "</div></div>");
    } else {
        $('.spanclass').html(commonArea + "<div id='qa' class='content' style='position:absolute;'><div class='colum_test_view'>" + qdataObj.qdata.nar + "</div><div class='colum_test_view02'><table border='0' width='100%' class='question_tbl'><tr><td><span class='" + otherInfo[3] + "'></span><span class='question_no'>Question - " + gcq + " </span> " + obtainedmarks + "</td></tr><tr><td " + tblclass + ">" + questiontext + "</td></tr></table>" + renderedOptions + otherInofString + report_an_issue + share + soltemplate + "</div></div>");
    }

    if (tfnsdflg == 1) {
        $(".content").css('height', '89%');
        if (parseInt(vidSols.length) > 0) {
            $("#solutiontab").removeClass('solutionup').addClass('solution');
            $.each(vidSols, function(index, viddata) {
                showVideo(viddata.vidid);

                publishSolutionProviderInfo(viddata.provider);

            });
            $("#solutiontab").click(function() {
                if (soluFlag == 1) { //open the video bar	
                    //publishSolutionProviderInfo(youTubeVideoInfo.solprovid);	
                    $(".solution_av").css('height', '53%');
                    $(".solution_av").css('display', 'block');
                    $(".content").css('height', '37%');
                    soluFlag = 0;
                    $("#solutiontab").removeClass('solution').addClass('solutionup');
                } else {
                    $(".solution_av").css('display', 'none');
                    $(".solution_av").css('height', '0%');
                    $(".content").css('height', '90%');
                    soluFlag = 1;
                    $("#solutiontab").removeClass('solutionup').addClass('solution');
                }
            });
        } else {
            $("#solutiontab").removeClass('solution').addClass('solution_fade');
        }

    }


}



function solutionTemplate(qdataObj) {

    var qno = parseInt(qdataObj.qmeta.qno);
    var solutionTxt = '';
    var str = "";
    var solProvider = '';
    //Attempted questions only - 1; Not attmpted questions only-2; All-3
    var isAttempted = is_question_attempted(qdataObj);
    if (scoincopt == 1 && isAttempted == true) {

    } else if (scoincopt == 2 && isAttempted == false) {

    } else if (scoincopt == 3) {

    } else {
        return '';
    }
    if (typeof gsols.qd != 'undefined' && typeof gsols.qd[qno] != 'undefined') {
        var sno = 0;
        var snovid = 0;
        var snostr = '';
        $.each(gsols.qd[qno], function(index, solData) {
            if (solData.type == 2) { //txt

                ++sno;
                if (gsols.qd[qno].length == 1) {
                    snostr = '';
                } else {
                    snostr = "Solution " + sno + ' - ';
                }
                if (typeof solData.provider != 'undefined') {
                    if (solData.provider == 0) {
                        solProvider = ' ';
                    } else {
                        solProvider = ' ';
                        //var solprovid = parseInt(solData.provider);
                        //solProvider = gsols.sp[solprovid].salutation+' '+gsols.sp[solprovid].name;
                    }
                }
                solutionTxt += snostr + solProvider + solData.solution_txt + "<br>";
            } else {
                vidSols[snovid] = new Object();
                vidSols[snovid].vidid = solData.solution_txt;
                vidSols[snovid].provider = solData.provider;
                ++snovid;
            }
        });
        if (solutionTxt != '') {
            str += "<div><a href='javascript:void(0);' id='abcd' onclick='toggleSolutionArea();' class='solution_btn_hide'></a></div>";
            str += "<div class='solution_wrapper'>";
            str += "<div class='solution_area'>";
            str += "<div class='solution_details'>" + solutionTxt + "</div>";
            str += "</div>";
            str += "</div>";
        }
    }
    return str;
}



function render_multiple_choice_layout(qdataObj) {
    var vartbl = "<div class='options_tbl'><table  border='0' cellspacing='0' cellpadding='5' >";
    var vartd1 = '';
    var vartd2 = '';
    var actionArray = new Array();
    actionArray = get_actions_for_left(gcq);
    $.each(qdataObj.qdata.qoptions, function(optno, optdata) {
        var optname = getoptionname(optno);
        vartd1 += "<tr><td>" + optname + ")</td>";

        if (tfnsdflg == 1) {
            var mclass = "class='" + $("#OPTR" + gcq + '' + optno).attr('class') + "'";
            vartd1 += "<td><span id='OPTL" + gcq + '' + optno + "' " + mclass + ">&nbsp;&nbsp;&nbsp;</span></td>";
        } else {
            vartd1 += "<td><input type='radio' name='OPTL" + gcq + "[]' id='OPTL" + gcq + '' + optno + "' " + actionArray[0] + " onclick='showClearButton(" + gcq + ")'   /></td>";
        }
        vartd1 += "<td><label for='OPTL" + gcq + '' + optno + "'>" + optdata + "</lable></td></tr>";
    });

    return vartbl + vartd1 + '</table></div>';
}

function render_multiple_answers_layout(qdataObj) {
    var vartbl = "<div class='options_tbl'><table border='0' cellspacing='0' cellpadding='5'>";
    var vartd1 = '';
    var vartd2 = '';
    var actionArray = new Array();
    actionArray = get_actions_for_left(gcq);
    $.each(qdataObj.qdata.qoptions, function(optno, optdata) {

        var optname = getoptionname(optno);

        vartd1 += "<tr><td>" + optname + "</td>";
        if (tfnsdflg == 1) {
            var mclass = "class='" + $("#OPTR" + gcq + '' + optno).attr('class') + "'";
            vartd1 += "<td><span id='OPTL" + gcq + '' + optno + "' " + mclass + ">&nbsp;&nbsp;&nbsp;</span></td>";
        } else {
            vartd1 += "<td><input type='checkbox' name='OPTL" + gcq + "[]' id='OPTL" + gcq + '' + optno + "' " + actionArray[0] + " onclick='showClearButton(" + gcq + ")' /></td>";
        }
        vartd1 += "<td><label for='OPTL" + gcq + '' + optno + "'>" + optdata + "</label></td></tr>";
        //$("<input type='radio'>").appendTo($('#RGT'+qid)).attr({'name':'OPTL'+gqno+'[]', 'id':'OPTL'+gqno+''+optno});			
    });

    return vartbl + vartd1 + '</table></div>';
}

function render_match_the_column_layout(qdataObj) {
    var vartr1 = "";
    var vartr2 = "";

    var vartd1 = '';
    var vartd2 = '';
    var vartd3 = '';

    var vartbl = "<div class='options_tbl'><table border='0' cellspacing='0' cellpadding='5'>";
    var actionArray = new Array();
    actionArray = get_actions_for_left(gcq);
    $.each(qdataObj.qdata.qoptions, function(row, matrix) {
        vartd1 = '';
        vartd2 = '';
        if (row == 0) {
            vartr2 += "<td></td>";
        }
        var rowtemplate = '';
        if (tfnsdflg == 1) {
            if (typeof qdataObj.qmeta.cp == "undefined" || qdataObj.qmeta.cp != 0) {
                rowtemplate = get_match_the_column_marks(qdataObj, row);
            }
        }
        $.each(matrix, function(col, optdata) {
            if (col == 0) {
                vartd2 += "<td>" + optdata.substr(0, 1) + "</td>";
            }

            if (row == 0) {
                vartr2 += "<td align='center'>" + optdata.substr(2) + "</td>";
            }

            if (tfnsdflg == 1) {
                var mclass = "class='" + $("#OPTR" + gcq + '-' + (row + 1) + '-' + (col + 1)).attr('class') + "'";
                vartd2 += "<td><span id='OPTL" + gcq + '-' + (row + 1) + '-' + (col + 1) + "' " + mclass + ">&nbsp;&nbsp;&nbsp;</span></td>";
            } else {
                vartd2 += "<td align='center'><input type='checkbox' name='OPTL" + gcq + '' + (row + 1) + "[]' id='OPTL" + gcq + '-' + (row + 1) + '-' + (col + 1) + "' " + actionArray[0] + " onclick='showClearButton(" + gcq + ")' /></td>";
            }


        });
        vartd3 = '';
        if (qdataObj.qmeta[row]) {
            incp = ' / - ' + qdataObj.qmeta[row].incp;
            if (parseInt(qdataObj.qmeta[row].incp) == 0) {
                var incp = '';
            }
            vartd3 = "<td><span class='match_column_no'> + " + qdataObj.qmeta[row].cp + "" + incp + "</span>" + rowtemplate + "</td>";
        }

        vartr2 = vartr2 + '<tr>' + vartd2 + vartd3 + '</tr>';
    });


    return vartbl + vartr2 + '</table></td></tr></table></div>';
}

function render_numeric_response_layout(qdataObj) {

    var strpos1 = strpos(qdataObj.qdata.qoptions[1], '|');
    var varsubstr = qdataObj.qdata.qoptions[1].substr(0, strpos1);

    rArray = varsubstr.split('.');
    if (rArray[1]) {
        //alert(rArray[0]+' - '+rArray[1]);							
        len1 = rArray[0].length;
        len2 = rArray[1].length;
    } else {
        len1 = rArray[0].length;
        len2 = '';
    }

    var vartbl = "<div class='options_tbl'><table  border='0' cellspacing='0' cellpadding='5'>";
    var tr = '';
    var td = '';
    var td1 = '';
    var tdhead = '<td>&nbsp;</td>';
    var tdhead1 = '';
    var trhead = '';
    var trhead1 = ''
    var newcol = 0;
    var qid = 1;
    var actionArray = new Array();
    actionArray = get_actions_for_left(gcq);

    for (var row = 0; row <= 9; row++) {
        td = '';
        td = td + "<td>" + row + "</td>";
        for (var col = 0; col < len1; col++) {
            if (row == 0) {
                tdhead = tdhead + "<td align='center'> <input type='text' class='input_size' size='1' name='OPTTXTL" + gcq + '-' + row + '-' + col + "' id='OPTTXTL" + gcq + '-' + row + '-' + col + "' value='' readonly='readonly' style='border:1px solid #666666' /></td>";
            }
            if (tfnsdflg == 1) {
                var mclass = "class='" + $("#OPTR" + gcq + '-' + (row) + '-' + (col)).attr('class') + "'";
                td += "<td><span id='OPTL" + gcq + '-' + (row) + '-' + (col) + "' " + mclass + ">&nbsp;&nbsp;&nbsp;</span></td>";
            } else {
                td = td + "<td><input type='radio'  name='OPTL" + gcq + "[" + col + "]' id='OPTL" + gcq + '-' + row + '-' + col + "' value='" + row + '-' + col + "' " + actionArray[0] + " onclick='showClearButton(" + gcq + ")' /></td>";
            }
        }

        if (len2 != '') { //for floating point
            var newlen = len1 + len2;
            //alert(newlen);
            newcol = 0;
            if (row == 0) {
                tdhead = tdhead + "<td></td>";  //floating point columns
            }
            td = td + "<td>.</td>";
            for (var col = len1; col < newlen; col++) {
                if (row == 0) {
                    tdhead = tdhead + "<td align='center'><input  class='input_size'type='text' size='1'  name='OPTTXTL" + gcq + '-' + row + '-' + col + "' id='OPTTXTL" + gcq + '-' + row + '-' + col + "' value='' readonly='readonly' style='border:1px solid #666666' /></td>";
                }
                td = td + "<td><input type='radio' name='OPTL" + gcq + "[" + col + "]' id='OPTL" + gcq + '-' + row + '-' + col + "' value='" + row + '-' + col + "' " + actionArray[0] + " onclick='showClearButton(" + gcq + ")' /></td>";
            }
        }

        if (row == 0) {
            tr = tr + "<tr>" + tdhead + "</tr>";
            tr = tr + "<tr>" + td + "</tr>";
        } else {
            tr = tr + "<tr>" + td + "</tr>";
        }
    }
    return vartbl + tr + "</table></div>";
}
//Main canvas related function ends here	

//test init functions starts here

function idudhr() {
    $.each(sectionObj, function(sectno, qdataObj) {
        if (qdataObj.qs) {
            qdataObj = qdataObj.qs;
        }
        var qindex = 0;
        var tmpqnos = new Array();
        sectionalQ[sectno] = new Array();
        if (sectionObj[sectno].smeta.adjcnt) {
            if (sectionObj[sectno].smeta.adjcnt.length > 0) {
                $.each(sectionObj[sectno].smeta.adjcnt, function(index, qnos) {
                    ++qindex;
                    tmpqnos = qnos;
                    if (ordgjm == 1) {
                        tmpqnos = arrayShuffle(qnos);
                    }
                    sectionalQ[sectno][tmpqnos[0]] = tmpqnos;
                });
            }
        }
        $.each(qdataObj, function(q, qtxtObj) {
            if (sectionObj[sectno].smeta.adjcnt) {
                var what = is_adjacent(sectionObj[sectno].smeta.adjcnt, q, sectno);
                if (!what) {
                    ++qindex;
                    sectionalQ[sectno][q] = q;
                }
            } else {
                ++qindex;
                sectionalQ[sectno][q] = q;
            }
        });
        if (ordjm == 1) {
            sectionalQ[sectno] = arrayShuffle(sectionalQ[sectno]);
        }
    });

}


function resume() {

    var output = '';
    var tmpqsobj = '';
    var summr = '';
    var isQAttmptd = '';
    sectTotalq = new Array();
    $.each(sectionObj.meta.qorder, function(sectno, tmpobj) {
        totalsections = totalsections + 1;
    });

    create_quick_review_tab(totalsections, sectTotalq);
    $.each(sectionObj.meta.qorder, function(sectno, sectdObj) {
        sectR[sectno] = new Array();
        qTimeArray[sectno] = new Array();
        var totalqinsection = 0;
        attempt_summary[sectno] = new Object();
        $.each(sectdObj, function(qid, q) {
            ++gqno;
            tmpqsobj = sectionObj.main[sectno].qs[q];
            qMap[gqno] = tmpqsobj;
            isQAttmptd = is_question_attempted(tmpqsobj);
            if (isQAttmptd) {
                attempt_summary[sectno].attempted = attempt_summary[sectno].attempted + 1;
            }
            output = processq(tmpqsobj.qmeta.qtype, tmpqsobj.qdata.qoptions, sectno, gqno, q, isQAttmptd);
            $('#RGT' + gqno).html(output);
            if (tmpqsobj.flag) {
                $('#Rflag' + gqno).removeClass('unmarked').addClass('marked');
            }

            qMap1[gqno] = sectno + '-' + q + '-' + tmpqsobj.qmeta.qid;
            qTimeArray[sectno][q] = 0;
            sectR[sectno][gqno] = tmpqsobj.qmeta.qid;
            if (totalqinsection == 0) {
                attach_event(sectno, gqno);
            }
            ++totalqinsection;
            if (tmpqsobj.qmeta.qtype == 4) {
                $("input[name^=OPTR" + gqno + "]").each(function(index) {
                    if ($(this).attr('checked') == true) {
                        var mcol = $(this).attr('id').substr(9);
                        var mrow = $(this).attr('id').substr(7, 1);
                        $("#OPTTXTR" + gqno + "-0-" + mcol).val(mrow);
                    }
                });
            }
        });

        attempt_summary[sectno].na = totalqinsection - attempt_summary[sectno].attempted;
        $('#more1' + sectno).html(' (' + totalqinsection + ') ');

        attempt_summary[sectno].flagged = 0;
        if (totalsections > 1) {
            summr = summr + "Section " + sectno + " : Not attempted - " + attempt_summary[sectno].na + "; Attempted - " + attempt_summary[sectno].attempted + ";  Flaged - 0 <br> ";
        } else {
            $('#view_more').html('');
        }
    });
    $('#total_na').html(gqno);
    tot_na = gqno;
    if (totalsections > 1) {
        get_attempt_summary();
        $('#view_more').addClass('show_summary');
    }

}

function start() {
    var output = '';
    var tmpqsobj = '';
    var summr = '';
    idudhr();
    sectTotalq = new Array();
    $.each(sectionObj, function(sectno, tmpobj, index) {
        totalsections = totalsections + 1;
    });
    create_quick_review_tab(totalsections, sectTotalq);
    $.each(sectionalQ, function(sectno, tmpsectionObj, index) {
        if (typeof tmpsectionObj != "undefined") {
            sectR[sectno] = new Array();
            qTimeArray[sectno] = new Array();
            var totalqinsection = 0;
            $.each(tmpsectionObj, function(key, qnos) {
                if (typeof qnos == "object") {
                    $.each(qnos, function(k, q) {
                        ++gqno;
                        tmpqsobj = sectionObj[sectno].qs[q];
                        //alert(tmpqsobj.qdata.qtxt+' - '+tmpqsobj.qmeta.qid);
                        //alert(sectionObj[sectno].qs[q].qmeta.qid);
                        output = processq(tmpqsobj.qmeta.qtype, tmpqsobj.qdata.qoptions, sectno, gqno, q, false); //isQAttmptd
                        $('#RGT' + gqno).html(output);
                        qMap[gqno] = tmpqsobj;
                        qMap1[gqno] = sectno + '-' + q + '-' + tmpqsobj.qmeta.qid;
                        qTimeArray[sectno][q] = 0;
                        sectR[sectno][gqno] = tmpqsobj.qmeta.qid;
                        if (totalqinsection == 0) {
                            attach_event(sectno, gqno);
                        }
                        ++totalqinsection;
                    });
                } else {
                    if (typeof qnos != "undefined") {
                        ++gqno;
                        tmpqsobj = sectionObj[sectno].qs[qnos];
                        output = processq(tmpqsobj.qmeta.qtype, tmpqsobj.qdata.qoptions, sectno, gqno, qnos, false);
                        $('#RGT' + gqno).html(output);
                        qMap[gqno] = tmpqsobj;
                        qMap1[gqno] = sectno + '-' + qnos + '-' + tmpqsobj.qmeta.qid;
                        qTimeArray[sectno][qnos] = 0;
                        sectR[sectno][gqno] = tmpqsobj.qmeta.qid;
                        if (totalqinsection == 0) {
                            attach_event(sectno, gqno);
                        }

                        ++totalqinsection;
                    }
                }

            });
            attempt_summary[sectno] = new Object();
            attempt_summary[sectno].na = totalqinsection;
            $('#more1' + sectno).html(' (' + totalqinsection + ') ');
            attempt_summary[sectno].attempted = 0;
            attempt_summary[sectno].flagged = 0;
            if (totalsections > 1) {
                summr = summr + "Section " + sectno + " : Not attempted - " + attempt_summary[sectno].na + "; Attempted - " + attempt_summary[sectno].attempted + ";  Flaged - 0 <br> ";
            } else {
                $('#view_more').html('');
            }
        }
    });

    $('#total_na').html(gqno);
    tot_na = gqno;
    if (totalsections > 1) {
        get_attempt_summary();
        $('#view_more').addClass('show_summary');
    }

}

function imloaded() {
    var query_string = "";
    query_string += "&resflag=" + isresume;

    if (isresume == 0) { //0 - no; 1 yes
        query_string += "&dt=" + qch;
    } else {
        query_string += "&attid=" + attid;
        query_string += "&attn=" + attn;
    }

    query_string += "&tid=" + tid;
    query_string += "&tid1=" + endt;
    $.ajax({
        type: "POST",
        url: lddurl,
        data: query_string,
        timeout: 20000,
        tryCount: 0,
        retryLimit: 2,
        success:
				function(t) {
				    if (t == 1 || t == 2 || t == 3) {
				        //eventTracker('Test Player',$('.stn_name').text()+' test not loaded - tmprng.');
				        alert('Oops! There was a problem, sorry.');
				        window.close();
				    } else if (t == 200) {
				        this.tryCount++;
				        if (this.tryCount <= this.retryLimit) {
				            $.ajax(this);
				            return;
				        }
				        //eventTracker('Test Player',$('.stn_name').text()+' test not loaded. Retry count '+this.tryCount);
				        alert('Oops! There was a problem, sorry.');
				        window.close();
				    } else {
				        $('head').append(t);
				        //eventTracker('Test Player','Test loaded for '+$('.stn_name').text()+' Retry '+this.tryCount);
				    }
				},
        error:
				function(xhr, textStatus, errorThrown) {
				    this.tryCount++;
				    if (this.tryCount <= this.retryLimit) {
				        $.ajax(this);
				        return;
				    }
				    //eventTracker('Test Player',$('.stn_name').text()+' test not loaded because of - xhr status '+xhr.status+', errorThrown '+errorThrown+' Try count - '+this.tryCount);
				    alert('Oops! There was a problem, sorry.');
				    window.close();
				}
    });
}

//test init functions ends here


// Quick review functions starts

function create_quick_review_tab(totsec) {

    if (totsec > 1) {
        for (var section = 1; section <= totsec; section++) {
            $('#slider').append("<div id='qr_sect" + section + "'><div id='qr_sect_heading" + section + "' class='review_section'>" + sectTitle[section] + "</div><div id='SR" + section + "'></div></div>");
            $('.tabs').append("<li><a title='" + sectTitle[section] + "' id='tab" + section + "' href='javascript:void(0);'>" + sectTitle[section] + "</a></li>");
        }
    } else {
        $('#slider').append("<div id='qr_sect" + section + "'><div id='qr_sect_heading1'></div><div id='SR1'></div></div>");
        $('.tabs').append("");
    }
}


function quick_review_toggle() {

    if (showHideFlag == 1) { //hide				
        $(".quick_review02").css('display', 'none');
        $(".content").css('width', '96%');

        showHideFlag = 0;
    } else {
        $(".quick_review02").css('display', 'block');

        $(".content").css('width', '76%');
        showHideFlag = 1;
    }
}


function processq(qt, qoptions, sectno, gqno, qid, isQAttmptd) {

    switch (parseInt(qt)) {
        case 1: //multiple_choice
            return multiple_choice(qoptions, sectno, gqno, qid, isQAttmptd);
            break;
        case 2: //multiple_answers
            return multiple_answers(qoptions, sectno, gqno, qid, isQAttmptd);
            break;
        case 3: //match_the_column
            return match_the_column(qoptions, sectno, gqno, qid, isQAttmptd);
            break;
        case 4: //numeric_response
            return numeric_response(qoptions, sectno, gqno, qid, isQAttmptd);
            break;
    }
}



function get_other_actions(isQAttmptd) {
    var actionArray = new Array();
    var mstyle = "style='display:none;'";
    //anchortag
    actionArray[0] = "<a href='javascript:void(0);' class='q_review_qa' onclick='direct_view(" + (gqno - 1) + ",1);'>" + gqno + "</a>";
    //flag

    actionArray[1] = "<a href='javascript:void(0);' id='Rflag" + gqno + "' class='unmarked' onclick='direct_view(" + (gqno - 1) + ",2);'>&nbsp;</a>"; 		//clear

    if (isQAttmptd) {
        mstyle = "style='display:block;'";
    }
    actionArray[2] = "<a href='javascript:void(0);' class='clear_active' " + mstyle + " onclick='clearOptions(" + (gqno) + ");'>Clear</a>";
    //option even
    actionArray[3] = "onclick='direct_view(" + (gqno - 1) + ",4);fillTxtBox(" + (gqno) + ",this);'";



    return actionArray;
}
function multiple_choice(qoptions, sectno, gqno, qid, isQAttmptd) {
    $('#SR' + sectno).append("<div id='RGT" + gqno + "' class='q_review_tbl'></div>");
    var actionArray = new Array();
    var qdataObj = eval(qMap[gqno]);
    var chkd = '';
    var matchFound = '';
    actionArray = get_other_actions(isQAttmptd);
    var vartbl = "<table border='0'  width='100%' cellspacing='0' cellpadding='5'><tr></td><td><span id='qstat" + gqno + "'></span><span style='float:left'>" + actionArray[0] + "</span></td><td>" + actionArray[1] + "&nbsp;&nbsp;&nbsp;" + actionArray[2] + "</td></tr><tr><td>&nbsp;</td><td ><table  border='0' cellspacing='0' cellpadding='2'>";
    var vartd1 = '';
    var vartd2 = '';

    $.each(qoptions, function(optno, optdata) {
        chkd = '';
        if (isresume == 1) {
            matchFound = load_previous_options(qdataObj, optno, gqno, '');
            if (matchFound) {
                chkd = "checked='checked'";
            }
        }

        var optname = getoptionname(optno);
        vartd1 += "<td align='center'>" + optname + "</td>";
        vartd2 += "<td align='center'><input type='radio' name='OPTR" + gqno + "' id='OPTR" + gqno + '' + optno + "' value='" + optno + "' " + actionArray[3] + " " + chkd + " /></td>";
        //$("<input type='radio'>").appendTo($('#RGT'+qid)).attr({'name':'OPTR'+gqno+'[]', 'id':'OPTR'+gqno+''+optno});			
    });
    var vartr1 = '<tr>' + vartd1 + '</tr>';
    var vartr2 = '<tr>' + vartd2 + '</tr>';
    return vartbl += vartr1 + vartr2 + '</table></td></tr></table>';
}


function multiple_answers(qoptions, sectno, gqno, qid, isQAttmptd) {
    $('#SR' + sectno).append("<div id='RGT" + gqno + "' class='q_review_tbl'></div>");
    var actionArray = new Array();
    var qdataObj = eval(qMap[gqno]);
    var chkd = '';
    var matchFound = '';
    actionArray = get_other_actions(isQAttmptd);
    var vartbl = "<table border='0'  width='100%' cellspacing='0' cellpadding='5'><tr><td><span id='qstat" + gqno + "'></span><span style='float:left'>" + actionArray[0] + "</span></td><td>" + actionArray[1] + "&nbsp;&nbsp;&nbsp;" + actionArray[2] + "</td></tr><tr><td>&nbsp;</td><td><table  border='0' cellspacing='0' cellpadding='2'>";
    var vartd1 = '';
    var vartd2 = '';

    $.each(qoptions, function(optno, optdata) {
        chkd = '';
        if (isresume == 1) {

            matchFound = load_previous_options(qdataObj, optno, gqno, '');

            if (matchFound) {
                chkd = "checked='checked'";
            }
        }
        var optname = getoptionname(optno);
        vartd1 += "<td align='center'>" + optname + "</td>";
        vartd2 += "<td align='center'><input type='checkbox' name='OPTR" + gqno + "' id='OPTR" + gqno + '' + optno + "' value='" + optno + "' " + actionArray[3] + " " + chkd + " /></td>";
        //$("<input type='radio'>").appendTo($('#RGT'+qid)).attr({'name':'OPTR'+gqno+'[]', 'id':'OPTR'+gqno+''+optno});			
    });
    var vartr1 = '<tr>' + vartd1 + '</tr>';
    var vartr2 = '<tr>' + vartd2 + '</tr>';
    return vartbl += vartr1 + vartr2 + '</table></td></tr></table>';

}



function numeric_response(qoptions, sectno, gqno, qid, isQAttmptd) {
    var rArray = new Array();
    var tr = '';
    $('#SR' + sectno).append("<div id='RGT" + gqno + "' class='q_review_tbl'></div>");
    var actionArray = new Array();
    var qdataObj = eval(qMap[gqno]);
    actionArray = get_other_actions(isQAttmptd);
    var vartbl = "<table border='0' width='100%' cellspacing='0' cellpadding='5'><tr><td><span id='qstat" + gqno + "'></span><span style='float:left'>" + actionArray[0] + "</span></td><td>" + actionArray[1] + "&nbsp;&nbsp;&nbsp;" + actionArray[2] + "</td></tr><tr><td>&nbsp;</td><td width='60%'><table border='0' cellspacing='0' cellpadding='2'>";

    var strpos1 = strpos(qoptions[1], '|');
    var varsubstr = qoptions[1].substr(0, strpos1);
    //alert(qoptions[1]);
    rArray = varsubstr.split('.');
    if (rArray[1]) {
        //alert(rArray[0]+' - '+rArray[1]);							
        tr = get_num_response_metrix(gqno, qid, rArray[0].length, rArray[1].length, actionArray[3]);
    } else {
        ///alert(rArray[0]);
        tr = get_num_response_metrix(gqno, qid, rArray[0].length, '', actionArray[3]);
    }

    return vartbl + tr + '</table></td></tr></table>';
}


function get_num_response_metrix(gqno, qid, len1, len2, action, isQAttmptd) {
    var tr = '';
    var td = '';
    var td1 = '';
    var tdhead = '<td>&nbsp;</td>';
    var tdhead1 = '';
    var trhead = '';
    var trhead1 = ''
    var newcol = 0;
    var qdataObj = eval(qMap[gqno]);
    var chkd = '';
    var matchFound = '';
    var rowsel = '';
    for (var row = 0; row <= 9; row++) {
        td = '';
        td = td + "<td>" + row + "</td>";
        for (var col = 0; col < len1; col++) {
            if (row == 0) {
                tdhead = tdhead + "<td align='center'><input class='input_size' maxlength='1' readonly='readonly' type='text' name='OPTTXTR" + gqno + '-' + row + '-' + col + "' id='OPTTXTR" + gqno + '-' + row + '-' + col + "' value='' " + action + " /></td>";
            }
            chkd = '';
            if (isresume == 1) {
                matchFound = load_previous_options(qdataObj, col, gqno, row);
                if (matchFound) {
                    chkd = "checked='checked'";
                    rowsel = row;
                }
            }

            td = td + "<td align='center'><input type='radio' name='OPTR" + gqno + "[" + col + "]' id='OPTR" + gqno + '-' + row + '-' + col + "' value='" + row + '-' + col + "' " + action + " " + chkd + " /></td>";
        }

        if (len2 != '') { //for floating point
            var newlen = len1 + len2;
            //alert(newlen);
            newcol = 0;
            if (row == 0) {
                tdhead = tdhead + "<td></td>";  //floating point columns
            }
            td = td + "<td>.</td>";
            for (var col = len1; col < newlen; col++) {
                if (row == 0) {
                    tdhead = tdhead + "<td align='center'><input type='text' maxlength='1' class='input_size' readonly='readonly' name='OPTTXTR" + gqno + '-' + row + '-' + col + "' id='OPTTXTR" + gqno + '-' + row + '-' + col + "' " + action + " /></td>";
                }

                chkd = '';
                if (isresume == 1) {
                    matchFound = load_previous_options(qdataObj, col, gqno, row);
                    if (matchFound) {
                        chkd = "checked='checked'";
                    }
                }

                td = td + "<td align='center'><input type='radio' name='OPTR" + gqno + "[" + col + "]' id='OPTR" + gqno + '-' + row + '-' + col + "' value='" + row + '-' + col + "' " + action + " " + chkd + " /></td>";
            }
        }

        if (row == 0) {
            tr = tr + "<tr>" + tdhead + "</tr>";
            tr = tr + "<tr>" + td + "</tr>";
        } else {
            tr = tr + "<tr>" + td + "</tr>";
        }
    }
    return tr;
}


function match_the_column(qoptions, sectno, gqno, qid, isQAttmptd) {
    var vartr1 = "";
    var vartr2 = "";
    var vartd1 = '';
    var vartd2 = '';
    var qdataObj = eval(qMap[gqno]);
    var chkd = '';
    var matchFound = '';
    $('#SR' + sectno).append("<div id='RGT" + gqno + "' class='q_review_tbl'></div>");
    var actionArray = new Array();
    actionArray = get_other_actions(isQAttmptd);
    var vartbl = "<table border='0' width='100%' cellspacing='0' cellpadding='5'><tr><td><span id='qstat" + gqno + "'></span><span style='float:left'>" + actionArray[0] + "</span></td><td>" + actionArray[1] + "&nbsp;&nbsp;&nbsp;" + actionArray[2] + "</td></tr><tr><td>&nbsp;</td><td><table border='0' cellspacing='0' cellpadding='2'>";

    $.each(qoptions, function(row, matrix) {
        vartd1 = '';
        vartd2 = '';
        if (row == 0) {
            vartr2 += "<td></td>";
        }
        $.each(matrix, function(col, optdata) {

            chkd = '';
            if (isresume == 1) {

                matchFound = load_previous_options(qdataObj, col, gqno, row);

                if (matchFound) {
                    chkd = "checked='checked'";
                }
            }
            if (col == 0) {
                vartd2 += "<td>" + optdata.substr(0, 1) + "</td>";
            }

            if (row == 0) {
                vartr2 += "<td align='center'>" + optdata.substr(2) + "</td>";
            }

            vartd2 += "<td align='center'><input type='checkbox' name='OPTR" + gqno + '' + (row + 1) + "[]' id='OPTR" + gqno + '-' + (row + 1) + '-' + (col + 1) + "' value='" + (row + 1) + '-' + (col + 1) + "' " + actionArray[3] + " " + chkd + " /></td>";
        });

        vartr2 = vartr2 + '<tr>' + vartd2 + '</tr>';
    });


    return vartbl + vartr2 + '</table></td></tr></table>';
}
// Quick review functions starts		

//Time related functionst starts
function start_timer() {
    hour_minute[0] = parseInt(duration.substr(0, 2));
    hour_minute[1] = parseInt(duration.substr(3, 2));
    milisec = parseInt(duration.substr(6, 2));
    if (parseInt(hour_minute[0]) == '0') {
        mysec = parseInt(hour_minute[1]) * 60;
        myminute = parseInt(hour_minute[1]);
    }
    else {
        mysec = parseInt(hour_minute[0]) * 60 * 60 + parseInt(hour_minute[1]) * 60
        myminute = parseInt(hour_minute[1]);
    }
    tm = setTimeout('timeout();', parseInt(mysec) * 1000);
    seconds = parseInt(mysec);
    minu = parseInt(myminute);
    hour = parseInt(hour_minute[0]);
}

function toggleTimer(clickedFrom) {
    if (clickedFrom == 1) { //pause button

    } else {
        $("#resumebutton").hide();
    }
    if (timer_is_on == 0) { //It's on. Switch it Off.
        timer_is_on = 1;
        $("#pausetst").html('<img src="' + stconurl + 'images/resume_icon.gif" border="0" align="absmiddle"  />Resume Time');
        clearTimeout(tm);
        $("#inline2").html("<span class='our_title'>Time paused</span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' ><br /><button id='resumebutton' onclick='javascript:toggleTimer(0);'>Resume</button><br /><br /></div></p>");
        psArray[psindx] = $('#timer').text();
        ++psindx;
        $("#various2").trigger('click');
    } else {
        timer_is_on = 0;
        $("#pausetst").html('<img src="' + stconurl + 'images/pause_icon.gif" border="0" align="absmiddle"  />Pause Time');
        $.fancybox.close();
        display();
    }
}

function disable_toolbar() {
    /*$("#inline2").html("<span class='our_title'>Alert!</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' >This feature is available before "+toolbalerttime+" minute.<br /><br /><button onclick='javascript:close_conf_box();'>Ok</button><br /><br /></div></p>");*/
    $("#inline2").html("<span class='our_title'>Oops!</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' >The test canot be saved when " + toolbalerttime + " minute is remaining.<br /><br /><button onclick='javascript:close_conf_box();'>Ok</button><br /><br /></div></p>");
    $("#various2").trigger('click');

}

function before_few_minutes() {
    alerttimeflag = 1;
    $("#inline2").html("<span class='our_title'>Alert!</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' >Only " + alerttime + " minutes remaining.<br /><br /><button onclick='javascript:close_conf_box();'>Ok</button><br /><br /></div></p>");
    $("#various2").trigger('click');

}

function display() {
    if (document.getElementById('timer') && document.getElementById('timer').innerHTML == '.') {
        return false;
    }

    if (parseInt(milisec) == '0' && parseInt(minu) == (alerttime) && parseInt(hour) == '0') {
        before_few_minutes();
    }

    //if(alerttimeflag==1 && parseInt(milisec)=='0' && (alerttime - parseInt(minu)==1) && parseInt(hour)=='0'){
    if (alerttimeflag == 1 && parseInt(milisec) == '55') {
        alerttimeflag = 0;
        close_conf_box();
    }

    if (parseInt(milisec) == '0' && parseInt(minu) == (toolbalerttime) && parseInt(hour) == '0') {
        close_conf_box();
        $('#btnsvtst').attr('onclick', '');
        $("#btnsvtst").bind("click", { t: 1 }, disable_toolbar);
    }

    if (parseInt(milisec) == '0' && parseInt(minu) == '0' && parseInt(hour) == '0') {
        timeout();
        if (document.getElementById('timer')) {
            document.getElementById('timer').innerHTML = ' Out';
        }
        return false;
    }

    if (parseInt(milisec) == '0' && parseInt(minu) == '0' && parseInt(hour_minute[0]) == "0") {
        timeout();
        return false;
    }

    if (parseInt(milisec) <= 0) {
        milisec = 60;
        if (parseInt(minu) <= 0) {
            minu = 59;
            hour -= 1;
        }
        else {
            minu -= 1;
        }
    }
    if (parseInt(seconds) <= -1) {
        milisec = 0;
        minu += 1;
    }
    else
        if (parseInt(hour_minute[0]) == "0") {
        milisec -= 1
        extraminu = minu;
        extramilisec = milisec;
        if (parseInt(minu) < 10) { extraminu = "0" + minu; }
        if (parseInt(milisec) < 10) { extramilisec = "0" + milisec; }
        if (document.getElementById('timer')) {
            document.getElementById('timer').innerHTML = extraminu + ":" + extramilisec;
        }
    }

    if (parseInt(hour_minute[0]) != "0") {
        milisec -= 1;
        extraminu = minu;
        extramilisec = milisec;
        extrahour = hour;
        if (parseInt(minu) < 10) { extraminu = "0" + minu; }
        if (parseInt(milisec) < 10) { extramilisec = "0" + milisec; }
        if (parseInt(hour) < 10) { extrahour = "0" + hour; }
        if (document.getElementById('timer')) {
            document.getElementById('timer').innerHTML = extrahour + ":" + extraminu + ":" + extramilisec;
        }
    }
    if (timer_is_on == 0) {
        tm1 = setTimeout("display()", 1000);
    } else {
        var gextrahour = extrahour;
        var gextraminu = extraminu;
        var gextramilisec = extramilisec;
    }
}

function record_time(qno, sectionno, q) {
    qTimeArray[sectionno][q] = qTimeArray[sectionno][q] + 1;
    tmq = setTimeout("record_time(" + qno + "," + sectionno + "," + q + ")", 1000);
}

function detach_timer() {
    clearTimeout(tmq);
}
//Time related functionst ends

//Action related to questions starts here

function attach_event(sectno, qno) {
    $('#tab' + sectno).live('click', function() {
        direct_view((qno - 1), 1);
    });
}

function synchQuestinOptionsLR(thisobj, qno) {
    var qrQuestionId = thisobj.id.replace('OPTL', 'OPTR');
    if (thisobj.checked == true) {
        $("#" + qrQuestionId).attr('checked', true);
    } else {
        $("#" + qrQuestionId).attr('checked', false);
    }
    show_hide_clear_action(qno);
    update_summary();
}

function fillTxtBox(qno, thisobj) {
    var val = thisobj.value.substr(0, 1);
    var col = thisobj.value.substr(2, 1);
    $("#OPTTXTR" + qno + "-0-" + col).val(val);
    $("input[name^=OPTTXTR" + qno + "]").each(function(index, obj) {
        var leftbox = obj.id.replace('OPTTXTR', 'OPTTXTL');
        $("#" + leftbox).val(obj.value);
    });
}


function get_actions_for_left(qno) {
    var actionArray = new Array();
    actionArray[0] = "onclick='synchQuestinOptionsLR(this," + qno + ");fillTxtBox(" + (qno) + ",this);'";
    return actionArray;
}

function synchQuestinOptionsRL(qno) {
    switch (parseInt(qdataObj.qmeta.qtype)) {
        case 1:
        case 2:
            var myindex = 0;

            $("input[name=OPTR" + qno + "]").each(function(index) {
                if ($(this).attr('checked') == 'checked') {
                    //alert($(this).val());
                    ++myindex;

                    $("#OPTL" + qno + "" + (index + 1)).attr('checked', true);
                } else {
                    $("#OPTL" + qno + "" + (index + 1)).attr('checked', false);
                }
            });

            break;
        case 3:
        case 4:
            $("input[name^=OPTR" + qno + "]").each(function(index) {
                if ($(this).attr('checked') == 'checked') {
                    $("#OPTL" + qno + "-" + $(this).val()).attr('checked', true);
                } else {
                    $("#OPTL" + qno + "-" + $(this).val()).attr('checked', false);

                }
            });
            if (parseInt(qdataObj.qmeta.qtype) == 4) {
                $("input[name^=OPTTXTR" + qno + "]").each(function(index, obj) {
                    var leftbox = obj.id.replace('OPTTXTR', 'OPTTXTL');
                    $("#" + leftbox).val(obj.value);
                });
            }
            break;
    }
}

function ischecked(qno) {
    var n = $("#RGT" + qno + " input[name^=OPTR" + qno + "]:checked").length;
    if (n == 0) {
        return false;
    }
    return true;
}

function clearOptions(qno) {

    var qdataObj = eval(qMap[qno]);
    var qtype = parseInt(qdataObj.qmeta.qtype);
    switch (qtype) {
        case 1:
        case 2:
            $("input[name=OPTR" + qno + "]").each(function(index) {
                if ($(this).attr('checked') == 'checked') {
                    $("#OPTL" + qno + "" + (index + 1)).attr('checked', false);
                    $(this).attr('checked', false);
                }
            });
            break;
        case 3:
        case 4:
            $("input[name^=OPTR" + qno + "]").each(function(index) {
                if ($(this).attr('checked') == 'checked') {
                    $("#OPTL" + qno + "-" + $(this).val()).attr('checked', false);
                    $(this).attr('checked', false);
                }
                if (qtype == 4 && $("#OPTTXTL" + qno + "-" + $(this).val())) {
                    $("#OPTTXTL" + qno + "-" + $(this).val()).val('');

                    $("#OPTTXTR" + qno + "-" + $(this).val()).val('');
                }
            });
            break;
    }

    $("#RGT" + qno + " a.clear_active").css('display', 'none');
    $("#LGT" + qno + " a.clear_active").css('display', 'none');
    update_summary();
}

function toggle_flag(qno) {

    if (action == 2) {
        if ($("#Rflag" + qno).hasClass('unmarked')) {
            $("#Rflag" + qno).removeClass('unmarked').addClass('marked');
            $("#Lflag" + qno).removeClass('unmarked').addClass('marked');
            if (action == 2) {
                var sectno = get_section(qno);
                attempt_summary[sectno].flagged = attempt_summary[sectno].flagged + 1;
                tot_flg = tot_flg + 1;
                $("#total_flaged").html(tot_flg);
            }
        } else {
            $("#Rflag" + qno).removeClass('marked').addClass('unmarked');
            $("#Lflag" + qno).removeClass('marked').addClass('unmarked');

            if (action == 2) {
                var sectno = get_section(qno);
                attempt_summary[sectno].flagged = attempt_summary[sectno].flagged - 1;
                tot_flg = tot_flg - 1;
                $("#total_flaged").html(tot_flg);
            }
        }

    } //$("#LGT"+qno+" a.clear_active").hide();	
}



function show_hide_clear_action(qno) {
    var what = ischecked(qno);
    if (what == true) {
        $("#RGT" + qno + " a.clear_active").css('display', 'block');
        $("#LGT" + qno + " a.clear_active").css('display', 'block');
    } else {
        $("#RGT" + qno + " a.clear_active").css('display', 'none');
        $("#LGT" + qno + " a.clear_active").css('display', 'none');
    }
}

//Action related to questions ends here	

// Summary section starts here

function hide_summary_window() {
    $("#summry").css('display', 'none');
}

function update_summary() {
    var attr = '';
    var summr = "<div style='float:right;'><a href='javascript:void(0);' style='color:#000000;' onclick='hide_summary_window();'>Hide</a></div><br>";
    var total_na = 0;
    var total_attempted = 0;
    var total_flaged = 0;
    var na = 0;
    var attmptd = 0;
    var flagged = 0;

    for (section = 1; section <= totalsections; section++) {
        if (totalsections > 1) {
            na = $("#qr_sect" + section + " a.clear_active:hidden").size();
            attmptd = $("#qr_sect" + section + " a.clear_active:visible").size();
            flagged = $("#qr_sect" + section + " a.marked").size();
            summr = summr + sectTitle[section] + " :: Not attempted - " + na + " | Attempted - " + attmptd + " |  Flaged - " + flagged + " <hr>";
        }

        $('#total_attempted').html($("#slider a.clear_active:visible").size());
        $('#total_na').html($("#slider a.clear_active:hidden").size());
        $('#total_flaged').html($("#slider a.marked").size());
    }
    $('#summry').html(summr);
}


function get_attempt_summary() {
    var summr = '';
    for (sectno = 1; sectno <= totalsections; sectno++) {
        if (totalsections > 1) {
            summr = summr + sectTitle[sectno] + " : Not attempted - " + attempt_summary[sectno].na + "; Attempted - " + attempt_summary[sectno].attempted + ";  Flaged - " + attempt_summary[sectno].flagged + " <br>";
        }
    }
    $('#summry').html(summr);
}

function show_qimages() {
    $('.spanclass img').each(function(index) {
        $(this).removeAttr('psrc');
        if ($(this).attr('alt')) {
            $(this).attr('src', qimgurl + $(this).attr('alt'));
        } else {
            var img = $(this).attr('src');
            $(this).attr('src', qimgurl + img);
        }
    });

}
// Summary section ends here

// Chart starts here
function largeview(filtertype, sectno, caption, title) {
    $("#various2").fancybox({
        'modal': false,
        'height': 500,
        'width': 500,
        'autoDimensions': false
    });
    $("#inline2").css('width', 500);
    $(".alert_wrapper").html("");
    $("#inline2").html('<div><div id="largeview"></div></div>');
    $("#various2").trigger('click');

    if (caption != 'Section') {

        draw_other_charts(filtertype, sectno, 'largeview', 'largeviewtopicpre', caption, title, 500, 500);
    } else {
        draw_chart(scoreSummaryObj.secd[sectno], sectno, 3, 'largeview', 500, 500);
    }
}


function get_topicwise_raw_data(qtxtObj, sectno) {
    qstatus = get_qstatus(qtxtObj);

    $.each(qtxtObj.qmeta.topic, function(id, name) {

        if (typeof qtopicArray[sectno].topic[id] == "undefined") {
            qtopicArray[sectno].topic[id] = new Object();
        }

        if (typeof qtopicArray[sectno].topic[id].id == "undefined") {
            qtopicArray[sectno].topic[id].id = id;
        }

        if (typeof qtopicArray[sectno].topic[id].name == "undefined") {
            qtopicArray[sectno].topic[id].name = name;
        }

        if (typeof qtopicArray[sectno].topic[id].corr == "undefined") {
            qtopicArray[sectno].topic[id].corr = 0;
        }

        if (typeof qtopicArray[sectno].topic[id].incorr == "undefined") {
            qtopicArray[sectno].topic[id].incorr = 0;
        }

        if (typeof qtopicArray[sectno].topic[id].na == "undefined") {
            qtopicArray[sectno].topic[id].na = 0;
        }

        switch (qstatus) {
            case 'na':
                qtopicArray[sectno].topic[id].na = qtopicArray[sectno].topic[id].na + 1;
                break;
            case 'corr':
                qtopicArray[sectno].topic[id].corr = qtopicArray[sectno].topic[id].corr + 1;
                break;
            case 'incorr':
                qtopicArray[sectno].topic[id].incorr = qtopicArray[sectno].topic[id].incorr + 1;
                break;
        }

    });

}

function get_sourcewise_raw_data(qtxtObj, sectno) {
    qstatus = get_qstatus(qtxtObj);

    $.each(qtxtObj.qmeta.sources, function(id, name) {

        if (typeof qsourceArray[sectno].source[id] == "undefined") {
            qsourceArray[sectno].source[id] = new Object();
        }

        if (typeof qsourceArray[sectno].source[id].id == "undefined") {
            qsourceArray[sectno].source[id].id = id;
        }

        if (typeof qsourceArray[sectno].source[id].name == "undefined") {
            qsourceArray[sectno].source[id].name = name;
        }

        if (typeof qsourceArray[sectno].source[id].corr == "undefined") {
            qsourceArray[sectno].source[id].corr = 0;
        }

        if (typeof qsourceArray[sectno].source[id].incorr == "undefined") {
            qsourceArray[sectno].source[id].incorr = 0;
        }

        if (typeof qsourceArray[sectno].source[id].na == "undefined") {
            qsourceArray[sectno].source[id].na = 0;
        }

        switch (qstatus) {
            case 'na':
                qsourceArray[sectno].source[id].na = qsourceArray[sectno].source[id].na + 1;
                break;
            case 'corr':
                qsourceArray[sectno].source[id].corr = qsourceArray[sectno].source[id].corr + 1;
                break;
            case 'incorr':
                qsourceArray[sectno].source[id].incorr = qsourceArray[sectno].source[id].incorr + 1;
                break;
        }

    });

}

function get_subjectwise_raw_data(qtxtObj, sectno) {
    qstatus = get_qstatus(qtxtObj);

    $.each(qtxtObj.qmeta.subject, function(id, name) {

        if (typeof qsubjectArray[sectno].subject[id] == "undefined") {
            qsubjectArray[sectno].subject[id] = new Object();
        }

        if (typeof qsubjectArray[sectno].subject[id].id == "undefined") {
            qsubjectArray[sectno].subject[id].id = id;
        }

        if (typeof qsubjectArray[sectno].subject[id].name == "undefined") {
            qsubjectArray[sectno].subject[id].name = name;
        }

        if (typeof qsubjectArray[sectno].subject[id].corr == "undefined") {
            qsubjectArray[sectno].subject[id].corr = 0;
        }

        if (typeof qsubjectArray[sectno].subject[id].incorr == "undefined") {
            qsubjectArray[sectno].subject[id].incorr = 0;
        }

        if (typeof qsubjectArray[sectno].subject[id].na == "undefined") {
            qsubjectArray[sectno].subject[id].na = 0;
        }

        switch (qstatus) {
            case 'na':
                qsubjectArray[sectno].subject[id].na = qsubjectArray[sectno].subject[id].na + 1;
                break;
            case 'corr':
                qsubjectArray[sectno].subject[id].corr = qsubjectArray[sectno].subject[id].corr + 1;
                break;
            case 'incorr':
                qsubjectArray[sectno].subject[id].incorr = qsubjectArray[sectno].subject[id].incorr + 1;
                break;
        }

    });

}

function get_chart_data() {
    var what = '';
    $.each(sectionObj.meta.qorder, function(sectno, qdataObj) {
        qtopicArray[sectno] = new Object();
        qtopicArray[sectno].topic = new Array();
        qsourceArray[sectno] = new Object();
        qsourceArray[sectno].source = new Array();
        qsubjectArray[sectno] = new Object();
        qsubjectArray[sectno].subject = new Array();
        $.each(qdataObj, function(qid, q) {
            qtxtObj = sectionObj.main[sectno].qs[q];
            get_topicwise_raw_data(qtxtObj, sectno);
            get_sourcewise_raw_data(qtxtObj, sectno);
            get_subjectwise_raw_data(qtxtObj, sectno);
        });

    });

    $.each(scoreSummaryObj, function(key, detailObj, index) {
        var custom_height = 200;
        var custom_width = 230;
        if (key == 'secd') {
            $.each(detailObj, function(sectno, details, index1) {
                $('#chart_section').append("<div  class='parent'><div id='chartno" + sectno + "' class='chart_wp'><div><h2>" + sectTitle[sectno] + "</h2></div></div></div>");

                $('#chartno' + sectno).append("<div class='child'><div class='child_title'>" + sectTitle[sectno] + "</div><span class='zoom_icon' onmousedown='largeview(1," + sectno + ",\"Section\",\"Section\");'title='Zoom'>zoom</span><div id='section_wise" + sectno + "'></div></div>");

                what = should_chart_be_draw(1, sectno);
                if (what == true) {
                    $('#chartno' + sectno).append("<div class='child'><div class='child_title'>Source</div><span class='zoom_icon' onmousedown='largeview(1," + sectno + ",\"Source\",\"Source\");'title='Zoom'>zoom</span><div id='source_wise_chart" + sectno + "'></div></div>");
                }

                what = should_chart_be_draw(2, sectno);
                if (what == true) {
                    $('#chartno' + sectno).append("<div class='child'><div class='child_title'>Topic</div><span class='zoom_icon' onmousedown='largeview(2," + sectno + ",\"Topic\",\"Topic\");' title='Zoom'>zoom</span><div id='topic_wise_chart" + sectno + "'></div></div>");
                }

                what = should_chart_be_draw(3, sectno);
                if (what == true) {
                    $('#chartno' + sectno).append("<div class='child'><div class='child_title'>Subject</div><span class='zoom_icon'  onmousedown='largeview(3," + sectno + ",\"Subject\",\"Subject\");' title='Zoom'>zoom</span><div id='subject_wise_chart" + sectno + "' ></div></div>");
                }

                var container = 'section_wise' + sectno;
                draw_chart(details, sectno, 3, container, custom_height, custom_width);
                draw_other_charts(1, sectno, 'source_wise_chart' + sectno, 'srcpre', 'Source', 'Source', custom_height, custom_width);
                draw_other_charts(2, sectno, 'topic_wise_chart' + sectno, 'topicpre', 'Topic', 'Topic', custom_height, custom_width);
                draw_other_charts(3, sectno, 'subject_wise_chart' + sectno, 'subjpre', 'Subject', 'Subject', custom_height, custom_width);
            });
        }
    });
}



function should_chart_be_draw(filtertype, sectno) {
    var filterArray = new Object();
    var row = 0;
    switch (filtertype) {
        case 1:  //source
            filterArray = qsourceArray[sectno].source;
            break;
        case 2:
            filterArray = qtopicArray[sectno].topic;
            break;
        case 3:
            filterArray = qsubjectArray[sectno].subject;
            break;
    }

    $.each(filterArray, function(id, chartdata) {
        if (chartdata) {
            row = row + 1;
        }
    });

    if (row == 1) {
        return false;
    }
    return true;
}

function draw_chart(chartData, sectno, rows, container, custom_height, custom_width) {

    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Correct');
    data.addColumn('number', 'Correct');
    data.addColumn('string', 'Incorrect');
    data.addColumn('number', 'Incorrect');
    data.addColumn('string', 'Not Attempted');
    data.addColumn('number', 'Not Attempted');
    data.addRows(rows);
    data.setValue(0, 0, 'Correct');
    data.setValue(0, 1, chartData.nocorr);
    data.setValue(1, 0, 'Incorrect');
    data.setValue(1, 1, chartData.noincorr);
    data.setValue(2, 0, 'Not Attempted');
    data.setValue(2, 1, chartData.nona);
    var chart = new google.visualization.PieChart(document.getElementById(container));
    chart.draw(data, { width: custom_width, height: custom_height, is3D: true, tooltipText: 'both', backgroundColor: '#fff', colors: ['#82c92d', '#ff5a00', '#13b3e7'], chartArea: { left: 20, top: 20, width: '90%', height: '80%' }, legendTextStyle: { color: "#000", fontName: "arial", fontSize: "11" }, legend: "bottom", titleFontSize: '14' });

}

function draw_other_charts(filtertype, sectno, chartDiv, prefix, filter_caption, title, custom_height, custom_width) {

    var filter_caption = '';
    var prefix = 'defaultprefix';
    var filterArray = new Object();
    var row = 0;
    switch (filtertype) {
        case 1:  //source
            filterArray = qsourceArray[sectno].source;
            break;
        case 2:
            filterArray = qtopicArray[sectno].topic;
            break;
        case 3:
            filterArray = qsubjectArray[sectno].subject;
            break;
    }

    $.each(filterArray, function(id, chartdata) {
        if (chartdata) {
            row = row + 1;
        }
    });

    if (row > 1) {
        var data = new google.visualization.DataTable();
        data.addColumn('string', filter_caption);

        data.addColumn('number', 'Correct');
        data.addColumn('number', 'Incorrect');
        data.addColumn('number', 'Not attempted');
        data.addRows(row);
        row = 0;
        $.each(filterArray, function(id, chartdata) {
            if (chartdata) {
                data.setValue(row, 0, chartdata.name);
                data.setValue(row, 1, chartdata.corr);
                data.setValue(row, 2, chartdata.incorr);
                data.setValue(row, 3, chartdata.na);
                row = row + 1;
            }
        });

        var chart = new google.visualization.BarChart(document.getElementById(chartDiv));
        chart.draw(data, { isStacked: true, width: custom_width, height: custom_height, is3D: true, colors: ['#82c92d', '#ff3c00', '#13b3e7'], tooltipText: 'both', legend: "bottom", titleFontSize: '14' });

    } else {
    }
}

function get_qstatus(qobject) {
    if (qobject.ud) {
        if (qobject.ud.iscorrect == 3) {//na
            return 'na';
        } else if (parseInt(qobject.ud.iscorrect) == 1) {
            return 'corr';
        } else {
            return 'incorr';
        }
    } else {
        return 'na';
    }
}
// Chart ends here


// Misceleneous functions starts

function show_share_widget(qno, ql) {

    //if(shrwdgt==1){
    //			$("#share").html("<div id='fb-root'></div>");
    //			window.fbAsyncInit = function() {
    //			  FB.init({appId: fbck, status: true, cookie: true,
    //						 xfbml: true,channelUrl : '//freeonlinetests247.com/channel.html',oauth: true});
    //			};	
    //			 
    //			(function() {
    //				var e = document.createElement('script'); e.async = true;			 
    //				e.src = document.location.protocol +
    //				  '//connect.facebook.net/en_US/all.js';
    //				document.getElementById("fb-root").appendChild(e);			 
    //			}());		
    //			 	  
    //			$("#share").append("<div class='fb-like' data-href='"+gshareurl+ql+"' data-send='true' data-width='350' data-show-faces='false'></div>");
    //			//$("#share").append("<fb:like href='"+gshareurl+ql+"' send='true' layout='button_count' width='350' show_faces='true' font=''></fb:like>");
    //		}

}

function showRecaptcha() {
    Recaptcha.create("6Le4hMcSAAAAAGCKh6e1vkEQybI3HqctHmD5f2Yy", 'captchadiv', {
        theme: "white",
        lang: "en",
        callback: Recaptcha.focus_response_field
    });
    $('#start_test').show();
}

function showRecaptcha1() {
    Recaptcha.create("6Le4hMcSAAAAAGCKh6e1vkEQybI3HqctHmD5f2Yy", 'captchacode', {
        theme: "white",
        lang: "en",
        callback: Recaptcha.focus_response_field
    });
    $('.mtoolbar').show();
    $('#formloader').html('');
}

function show_issue_form(qno, qdataObj, anchobj) {
    //document.onselectstart = function() {return true;} // ie
    //document.onmousedown = function() {return true;} // mozilla
    $(".alert_wrapper").html("");
    if (issue_categoryObj.length > 0) {
        $("#inline2").html("<span class='our_title'>Report an issue</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center'><table width='100%' border='0' cellspacing='0' cellpadding='5' class='frm_table'><tr><td>Category<span class='required'> *</span></td><td><select name='issue_category' id='issue_category'></select><div id='cat_error' class='required'></div></td></tr><tr><td>Subject<span class='required'> *</span></td><td><input type='text' name='issue_subject' id='issue_subject' value='' /><div id='subj_error' class='required'></div></td></tr><tr><td>Details<span class='required'> *</span></td><td><textarea id='issue_details' name='issue_details' style='width:200px; height:80px' rows='10' cols='30' ></textarea><div id='detail_error' class='required'></div></td></tr><tr><td>&nbsp;</td><td><button title='Submit an issue' id='issue_submit' onclick='submit_issue(" + qno + "," + qdataObj.qmeta.qid + "," + qdataObj.qmeta.qno + ");'>Submit an issue</button>&nbsp;&nbsp;<button onclick='$.fancybox.close();' title='Cancel' id='issue_cancel'>Cancel</button></td></tr></table></div></p>");
        $('#issue_category').append('<option value="0">Please select</option>');
        $.each(issue_categoryObj, function(cat_id, obj) {
            $('#issue_category').append('<option value="' + obj.cat_id + '">' + obj.caption + '</option>');
        });
        $("#various2").fancybox({
            'modal': true,
            'autoScale': true,
            'onClosed': function() {
                //document.onselectstart = function() {return false;} // ie
                //document.onmousedown = function() {return false;}
            }
        });
        $("#various2").trigger('click');

    } else {
        $("#inline2").html("<span class='our_title'>Service not avaialble</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' >Service not avaialble right now.<br /><br /><button onclick='javascript:close_conf_box();'>Ok</button><br /><br /></div></p>");
        $("#various2").trigger('click');

    }

}

function timeout() {
    var method = "javascript:close_conf_box();";
    if (islg == 0) {
        method = "javascript:askForRegistration();";
    }
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Timeout message</span> <span class='for_close'></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' ><p>Time out.</p><br /><br /><button onclick='" + method + "' >Ok</button><br /><br /></div></p>");
    $("#various2").trigger('click');
    if (rfs == 1) {
        submit_handler(0);
    } else {

    }
}

function save_test() {
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Save Test</span> <span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' ><p>Do you want to save the test now and resume later ?</p><br /><button onclick='submit_handler(2);'>Save now</button>&nbsp;&nbsp;<button onclick='javascript:close_conf_box();' id='svtst' >Cancel</button><br /></div></p>");
    $("#various2").trigger('click');

}

function ask_for_registration() {
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Save Test</span> <span class='for_close'></span><p><div class='alert_wrapper' align='center' style='margin-bottom:5px;' ><p>You can SAVE the test only if you are a registered user.</p><br /><button onclick='javascript:close_conf_box();'>Ok</button><br /><br /></div></p>");
    $("#various2").trigger('click');
}
// Misceleneous functions ends

//common functions starts here


function trim(stringToTrim) {
    return stringToTrim.replace(/^\s+|\s+$/g, "");
}
function ltrim(stringToTrim) {
    return stringToTrim.replace(/^\s+/, "");
}
function rtrim(stringToTrim) {
    return stringToTrim.replace(/\s+$/, "");
}
function timeDifference(laterdate, earlierdate) {
    var difference = laterdate.getTime() - earlierdate.getTime();
    var returndiff = '';
    var daysDifference = Math.floor(difference / 1000 / 60 / 60 / 24);
    difference -= daysDifference * 1000 * 60 * 60 * 24

    var hoursDifference = Math.floor(difference / 1000 / 60 / 60);
    difference -= hoursDifference * 1000 * 60 * 60

    var minutesDifference = Math.floor(difference / 1000 / 60);
    difference -= minutesDifference * 1000 * 60

    var secondsDifference = Math.floor(difference / 1000);

    if (minutesDifference < 10) {
        minutesDifference = '0' + minutesDifference;
    }
    if (secondsDifference < 10) {
        secondsDifference = '0' + secondsDifference;
    }
    if (hoursDifference < 10) {
        hoursDifference = '0' + hoursDifference;
    }
    returndiff = hoursDifference + ':' + minutesDifference + ':' + secondsDifference;

    return returndiff;

}

function is_question_attempted(qobject, qno) {
    if (qobject.ud) {
        if (qobject.ud.iscorrect == 3) {//na
            return false;
        }
        return true;
    } else {
        return false;
    }
}
//doc ready ends 	
function in_array(needle, haystack, argStrict) {
    var key = '',
			strict = !!argStrict;

    if (strict) {
        for (key in haystack) {
            if (haystack[key] === needle) {
                return true;
            }
        }
    } else {
        for (key in haystack) {
            if (haystack[key] == needle) {
                return true;
            }
        }
    }

    return false;
}

function load_previous_options(qobject, optno, qno, row) {

    var corrincorrclass = new Array();

    var isAttempted = is_question_attempted(qobject, qno);
    var uoptions = '';
    var matchFound = false;
    switch (parseInt(qobject.qmeta.qtype)) {
        case 1: //multiple_choice						
            if (isAttempted == true) {
                if (optno == qobject.ud.uopt) { //actualanswer==useranswer
                    matchFound = true;
                }
            }

            break;
        case 2: //multiple_answers
            var classcorrect = "class='check_box_blank'";
            var classincorrect = "";
            if (isAttempted == true) {
                if (in_array(optno, qobject.ud.uopt) == true) { //actualanswer==useranswer
                    matchFound = true;
                }
            }
            break;
        case 3: //match_the_column	
            var classcorrect = "class='check_box_blank'";
            var classincorrect = "";
            if (isAttempted == true) {
                var patt1 = new RegExp(optno + 1);
                var what = patt1.test(qobject.ud.uopt[row + 1]);
                if (what == true) { //useroption is true
                    matchFound = true;
                }
            }

            break;
        case 4: //numeric_response			
            if (isAttempted == true) {
                var sep_pos = strpos(qobject.ud.corropt, '.');
                if (!sep_pos) {
                    if (qobject.ud.uopt == row) {	//actualanswer==optno
                        matchFound = true;
                    }
                } else {
                    var uopt = qobject.ud.uopt.substr(optno, 1);
                    if (uopt == row) {	//actualanswer==optno
                        matchFound = true;
                    }
                }

            }
            break;
    }
    return matchFound;
}

function getoptionname(optno) {
    switch (parseInt(optno)) {
        case 1: //multiple_choice
            return 'A';
            break;
        case 2: //multiple_answers
            return 'B';
            break;
        case 3: //match_the_column
            return 'C';
            break;
        case 4: //numeric_response
            return 'D';
            break;
        case 5: //numeric_response
            return 'E';
            break;
        case 6: //numeric_response
            return 'F';
            break;
    }
}

function close_conf_box() {
    $.fancybox.close();
}

function strpos(haystack, needle, offset) {
    var i = (haystack + '').indexOf(needle, (offset || 0));
    return i === -1 ? false : i;
}

function isEmpty(fldval) {
    //title field 
    if (fldval == "" || fldval == null || fldval.charAt(0) == ' ') {
        return false;
    }
    return true;
}

function get_section(qno) {
    var whichsection = 0;
    for (var section = 1; section < sectR.length; section++) {
        if (sectR[section][qno]) {
            $('#tab' + section).addClass('tab_current');
            whichsection = section;
        } else {
            $('#tab' + section).removeClass('tab_current');
        }
    }
    return whichsection;
}

function get_qustion_type(qno) {
    var qdataObj = eval(qMap[qno]);
    var qtype = parseInt(qdataObj.qmeta.qtype);
    var qtypeInfo = new Array();
    switch (qtype) {
        case 1:
            qtypeInfo[0] = 'Multiple Choice';
            qtypeInfo[1] = 'Only one option is correct';
            break;
        case 2:
            qtypeInfo[0] = 'Multiple Answers';
            qtypeInfo[1] = 'One or more than one option(s) is/are correct';
            break;
        case 3:
            qtypeInfo[0] = 'Matrix match type';
            qtypeInfo[1] = 'Any statement in <strong>Column 1</strong> can have correct<br/>matching with ONE or MORE statements(s) in<br/><strong>Column 2</strong>';
            break;
        case 4:
            qtypeInfo[0] = 'Integer type answer';
            qtypeInfo[1] = 'Answer to this question is an Integer';
            break;
    }
    return qtypeInfo;
}

function is_adjacent(adjcntqsObj, q, sectno) {
    var returnva = false;
    $.each(adjcntqsObj, function(grpind, adjcntqs) {
        $.each(adjcntqs, function(key, qno) {
            //alert(q+'=='+qno);					  
            if (q == qno) {
                return returnva = true;
            }
        });
    });
    return returnva;
}

function arrayShuffle(oldArray) {
    var newArray = oldArray.slice();
    var len = newArray.length;
    var i = len;
    while (i--) {
        var p = parseInt(Math.random() * len);
        var t = newArray[i];
        newArray[i] = newArray[p];
        newArray[p] = t;
    }
    return newArray;
}

function toggle_details(a) {
    if ($('#detailtab').text() == 'Show Details') {
        $('#detailtab').html('Show Charts');
        $('#detailtab').attr('title', 'Show Charts');
        $("#analysis_section").hide();
        $("#footer").show();
        $("#thisdiv").show();
    } else {
        $('#detailtab').html('Show Details');
        $("#analysis_section").show();
        $('#detailtab').attr('title', 'Show Details');
        $("#footer").hide();
        $("#thisdiv").hide();
        $("#summry").hide();

    }
}

//common functions ends here


//After submission starts
function get_legend(qObject1) {

    if (typeof qObject1.ud == "undefined") {//for backward 
        return "not_na";
    } else if (qObject1.ud.iscorrect == 1) { //correct
        return "legend_corr01";
    } else if (qObject1.ud.iscorrect == 2) {//partial correct
        return "legend_corr01";
    } else if (qObject1.ud.iscorrect == 3) {//na
        return "not_na";
    } else { //incorrect
        return "legend_incorr01";
    }
}

function after_submition() {
    if (minimal == 1) {
        return true;
    }
    var glqno = 0;
    var qvid = new Array();
    var solQno = new Array();
    var isQAttmptd = ''
    var legendclass = '';
    var vindex = 0;
    var vindex1 = 0;
    $.each(sectionObj.meta.qorder, function(sectno, sectdObj) {
        $.each(sectdObj, function(qid, q) {
            var qObject = new Object();
            ++glqno;
            qObject = eval(sectionObj.main[sectno].qs[q]);
            qMap[glqno] = eval(sectionObj.main[sectno].qs[q]);
            mark_options(qObject, glqno, 'R');
            legendclass = get_legend(qObject);

            $("#qstat" + glqno).addClass(legendclass);
            isQAttmptd = is_question_attempted(qObject);
            solQno[vindex1] = qObject.qmeta.qno;
            ++vindex1;
            if (isQAttmptd) {
                qvid[vindex] = qObject.qmeta.qid;
                ++vindex;
            }
        });
    });

    $(".clear_active").remove();
    $(".marked").attr('onclick', 'return false;');
    $(".unmarked").attr('onclick', 'return false;');

    var earlierdate = new Date(2012, 2, 1, testduration.substr(0, 2), testduration.substr(3, 2), testduration.substr(6, 2));
    if ($("#timer").text().length == 5) {
        var laterdate1 = '00:' + $("#timer").text();
    } else {
        var laterdate1 = $("#timer").text();
    }
    //var d = new Date(year, month, day, hours, minutes, seconds, milliseconds);
    var laterdate = new Date(2012, 2, 1, laterdate1.substr(0, 2), laterdate1.substr(3, 2), laterdate1.substr(6, 2));

    $("#tmremain").html('Time taken');
    $("#timer").html(timeDifference(earlierdate, laterdate));

    //getVideos(qvid);		
    getSolutions(solQno);
}

function getSolutions(solQno) {
    var query_string = '';
    $('#detailtab').html("<img src='" + stconurl + "images/ajax.gif' alt='Loader'>");

    if (solQno == '') {
        vidInfo = 1;
        $('#detailtab').html('Show Details');
        $("#detailtab").bind("click", { t: 1 }, toggle_details);
        direct_view(0, 1);
    }

    query_string += "&qnos=" + escape(solQno);

    $.ajax({
        type: "POST",
        url: solurl,
        data: query_string,
        timeout: 5000,
        success:
			function(t) {

			    $('#detailtab').html('Show Details');
			    $("#detailtab").bind("click", { a: 1 }, toggle_details);

			    if (t == 1) {
			        gsols = 1;
			    } else {
			        gsols = jQuery.parseJSON(t);
			    }

			    direct_view(0, 1); //set question to first question
			},
        error:
			function(xhr) {
			    gsols = 1;
			    $('#detailtab').html('Show Details');
			    $("#detailtab").bind("click", { t: 1 }, toggle_details);
			    direct_view(0, 1);
			}
    });

}

function mark_options(qObject, glqno, lr) {
    var qtype = parseInt(qObject.qmeta.qtype);

    var uopt = '';
    var corropt = '';
    var isAttempted = is_question_attempted(qObject, glqno);
    if (isAttempted == true) {
        uopt = qObject.ud.uopt;
        corropt = qObject.ud.corropt;
    }
    if (typeof qObject.ud != "undefined") {//na		for backward condition	 
        corropt = qObject.ud.corropt;
    }
    switch (qtype) {
        case 1:
            $("input[name=OPT" + lr + glqno + "]").each(function(index) {
                var optno = index + 1;

                var tmpid = $(this).attr('id');

                $(this).replaceWith("<span id='" + tmpid + "'>&nbsp;&nbsp;&nbsp;</span>");
                if (scoincopt == 1) {
                    if (isAttempted == true) {
                        if (uopt == corropt && uopt == optno) {//incor							
                            $("#" + tmpid).addClass('option_user_correct');
                        } else if (corropt == optno) {//corr
                            $("#" + tmpid).addClass('option_correct');
                        } else if (uopt != corropt && uopt == optno) {//incor
                            $("#" + tmpid).addClass('option_incorrect');
                        } else {
                            $("#" + tmpid).addClass('option_blank');
                        }
                    } else {
                        $("#" + tmpid).addClass('option_blank');
                    }
                } else if (scoincopt == 3) {
                    if (isAttempted == true) {
                        if (uopt == corropt && uopt == optno) {//incor
                            $("#" + tmpid).addClass('option_user_correct');
                        } else if (corropt == optno) {//corr
                            $("#" + tmpid).addClass('option_correct');
                        } else if (uopt != corropt && uopt == optno) {//incor
                            $("#" + tmpid).addClass('option_incorrect');
                        } else {
                            $("#" + tmpid).addClass('option_blank');
                        }
                    } else {
                        if (corropt == optno) {//corr
                            $("#" + tmpid).addClass('option_correct');
                        } else {
                            $("#" + tmpid).addClass('option_blank');
                        }
                    }
                } else {

                }
            });
            break;
        case 2:
            $("input[name=OPT" + lr + glqno + "]").each(function(index) {
                var optno = index + 1;
                var tmpid = $(this).attr('id');
                $(this).replaceWith("<span id='" + tmpid + "'>&nbsp;&nbsp;&nbsp;</span>");
                $("#" + tmpid).addClass('check_box_blank');
                if (scoincopt == 1) {
                    if (isAttempted == true) {
                        if (in_array(optno, uopt) == true) { //actualanswer==useranswer
                            if (in_array(optno, corropt) == true) { //actualanswer==useranswer
                                $("#" + tmpid).removeClass('check_box_blank')
                                $("#" + tmpid).addClass('check_box_user_correct');
                            } else {
                                $("#" + tmpid).removeClass('check_box_blank').addClass('ckeck_box_incorrect');
                            }
                        } else {
                            if (in_array(optno, corropt) == true) { //actualanswer==useranswer
                                $("#" + tmpid).removeClass('check_box_blank')
                                $("#" + tmpid).addClass('ckeck_box_correct');
                            }
                        }
                    } else {
                        $("#" + tmpid).addClass('check_box_blank');
                    }
                } else if (scoincopt == 3) {
                    if (isAttempted == true) {
                        if (in_array(optno, uopt) == true) { //actualanswer==useranswer
                            if (in_array(optno, corropt) == true) { //actualanswer==useranswer
                                $("#" + tmpid).removeClass('check_box_blank')
                                $("#" + tmpid).addClass('check_box_user_correct');
                            } else {
                                $("#" + tmpid).removeClass('check_box_blank').addClass('ckeck_box_incorrect');
                            }
                        } else {
                            if (in_array(optno, corropt) == true) { //actualanswer==useranswer
                                $("#" + tmpid).removeClass('check_box_blank')
                                $("#" + tmpid).addClass('ckeck_box_correct');
                            }
                        }
                    } else {
                        if (in_array(optno, corropt) == true) { //actualanswer==optno
                            $("#" + tmpid).removeClass('check_box_blank')
                            $("#" + tmpid).removeClass('ckeck_box_incorrect');
                            $("#" + tmpid).addClass('ckeck_box_correct')
                        } else {
                            $("#" + tmpid).addClass('check_box_blank');
                        }
                    }
                } else {

                }
            });
            break;
        case 3:
            var r = 0;
            var c = 0;
            var boxid = '';
            var compnt = new Array();
            $("input[id^=OPT" + lr + glqno + "]").each(function(index) {
                var tmpid = $(this).attr('id');
                compnt = $(this).attr('id').split('-');
                $(this).replaceWith("<span id='" + $(this).attr('id') + "'>&nbsp;&nbsp;&nbsp;</span>");
                //$("#"+tmpid).css('background-color','#999999'); 
                $("#" + tmpid).addClass('check_box_blank');
                r = compnt[1];
                c = compnt[2];

            });
            if (scoincopt == 1) {
                if (isAttempted == true) {
                    mark_full_match_the_column(uopt, corropt, r, c, lr, glqno);
                }
            } else if (scoincopt == 3) {
                if (isAttempted == true) {
                    mark_full_match_the_column(uopt, corropt, r, c, lr, glqno);
                } else {
                    mark_correct_match_the_column(uopt, corropt, r, c, lr, glqno);
                }
            } else {

            }
            break;
        case 4:
            var r = 0;
            var c = 0;

            var compnt = new Array();

            //alert(sep_pos);
            $("input[id^=OPT" + lr + glqno + "]").each(function(index) {
                var tmpid = $(this).attr('id');
                compnt = $(this).attr('id').split('-');
                $(this).replaceWith("<span id='" + $(this).attr('id') + "'>&nbsp;&nbsp;&nbsp;</span>");
                //$("#"+tmpid).css('background-color','#999999'); 
                $("#" + tmpid).addClass('option_blank');
                r = parseInt(compnt[1]);
                c = parseInt(compnt[2]);
            });
            if (scoincopt == 1) {
                if (isAttempted == true) {
                    mark_num_response(uopt, corropt, r, c, lr, glqno)
                }
            } else if (scoincopt == 3) {
                if (isAttempted == true) {
                    mark_num_response(uopt, corropt, r, c, lr, glqno);
                } else {
                    mark_num_response(uopt, corropt, r, c, lr, glqno);
                }
            } else {

            }

            break;
    }
}
function mark_num_response(uopt, corropt, r, c, lr, glqno) {
    if (corropt == '') {
        return false;
    }
    var boxid = '';
    var sep_pos = strpos(corropt, '.');
    if (!sep_pos) {
        for (var row = 0; row <= r; row++) {
            for (var col = 0; col <= c; col++) {
                boxid = "#OPT" + lr + glqno + '-' + row + '-' + col;
                var mcorropt = corropt.substr(col, 1);
                var muopt = uopt.substr(col, 1);
                if (muopt == row && muopt == mcorropt) {
                    $(boxid).removeClass('option_blank').addClass('option_user_correct');
                } else if (uopt == '') {
                    $(boxid).addClass('option_blank');
                } else if (mcorropt == row) {
                    $(boxid).removeClass('option_blank').addClass('option_correct');
                } else if (muopt == row && muopt != mcorropt) {
                    $(boxid).removeClass('option_blank').addClass('option_incorrect');
                } else {

                }
            }
        }
    }
}

function mark_correct_match_the_column(uopt, corropt, r, c, lr, glqno) {
    if (corropt == '') {
        return false;
    }
    var corrOptArray = new Array();
    for (var row = 1; row <= r; row++) {
        corrOptArray = corropt[row - 1].split('-');
        for (var col = 1; col <= c; col++) {
            boxid = "#OPT" + lr + glqno + '-' + row + '-' + col;
            $(boxid).removeClass('check_box_blank');
            if (corrOptArray[col - 1] == col) {
                $(boxid).addClass('ckeck_box_correct');
                //$(boxid).css('background-color','#009900');
            } else {
                $(boxid).addClass('check_box_blank');
            }

        }
    }
}

function mark_full_match_the_column(uopt, corropt, r, c, lr, glqno) {
    if (corropt == '') {
        return false;
    }
    var corrOptArray = new Array();
    for (var row = 1; row <= r; row++) {
        var uoptArray = new Array();
        if (typeof uopt[row] != 'undefined') {
            uoptArray = uopt[row].split('-');
        }
        if (typeof corropt[row - 1] != 'undefined') {
            corrOptArray = corropt[row - 1].split('-');
        }
        for (var col = 1; col <= c; col++) {
            boxid = "#OPT" + lr + glqno + '-' + row + '-' + col;
            $(boxid).removeClass('check_box_blank');
            if (uoptArray[col - 1] && uoptArray[col - 1] != '#') {//attempted
                if (corrOptArray[col - 1] == uoptArray[col - 1]) { //correct option==user option
                    $(boxid).addClass('check_box_user_correct');
                } else {
                    $(boxid).addClass('ckeck_box_incorrect');
                }
            } else { //not attempted
                if (corrOptArray[col - 1] == col) {
                    $(boxid).addClass('ckeck_box_correct');
                    //$(boxid).css('background-color','#009900');
                } else {
                    $(boxid).addClass('check_box_blank');
                }
            }
        }
    }
}

function get_obatined_marks(qdataObj1) {
    var index = 0;
    var obtained_marks = 0;
    if (typeof qdataObj1.ud == "undefined") {
        return obtainedtemplate = ""; //na
    } else if (qdataObj1.ud.iscorrect == 3) {//na
        return obtainedtemplate = ""; //na
    } else if (qdataObj1.ud.iscorrect == 1 || qdataObj1.ud.iscorrect == 2) {		 //correct	

        if (qdataObj1.qmeta.cp) {
            obtained_marks = " + " + qdataObj1.qmeta.cp;
        } else {
            obtained_marks = 0;

            $.each(qdataObj1.qmeta, function(fld, val) {

                if (!isNaN(fld)) {
                    //not attempted
                    var temparray = qdataObj1.ud.uopt[index + 1].split("-");
                    var count = 0;
                    $.each(temparray, function(key, arrval) {
                        if (arrval == '#') {
                            count = count + 1;
                        }
                    });

                    if (count == temparray.length) {

                    } else if (qdataObj1.ud.uopt[index + 1] == qdataObj1.ud.corropt[index]) {//correct
                        obtained_marks = obtained_marks + parseInt(val.cp);
                    } else {
                        obtained_marks = obtained_marks - parseInt(val.incp);
                    }

                    index = index + 1;
                }

            });
        }
        if (obtained_marks < 0) {
            obtained_marks = " - " + obtained_marks;
        }

        if (obtained_marks > 0) {
            obtained_marks = " + " + obtained_marks;
        }
        return obtainedtemplate = "<span class='take_marks'>" + obtained_marks + "</span>";
    } else { //incorrect
        if (qdataObj.qmeta.incp) {
            obtained_marks = qdataObj1.qmeta.incp;
        } else if (qdataObj1.incp == 0) {
            obtained_marks = "";
        } else {
            obtained_marks = 0;
            $.each(qdataObj1.qmeta, function(fld, val) {

                if (!isNaN(fld)) {
                    //not attempted
                    var temparray = qdataObj1.ud.uopt[index + 1].split("-");
                    var count = 0;
                    $.each(temparray, function(key, arrval) {
                        if (arrval == '#') {
                            count = count + 1;
                        }
                    });

                    if (count == temparray.length) {

                    } else if (qdataObj1.ud.uopt[index + 1] == qdataObj1.ud.corropt[index]) {//correct
                        obtained_marks = obtained_marks + parseInt(val.cp);
                    } else {
                        obtained_marks = obtained_marks - parseInt(val.incp);
                    }
                    index = index + 1;
                }

            });

        }

        if (obtained_marks > 0) {
            obtained_marks = " - " + obtained_marks;
        }

        return obtainedtemplate = "<span class='take_marks'>" + obtained_marks + "</span>";
    }

}


function get_match_the_column_marks(qdataObj, row) {
    if (typeof qdataObj.ud != 'undefined') {
        var count = 0;
        if (qdataObj.ud.uopt == 'NA') {
            return "<span class='na_class'>NA</span>";
        } else {
            var temparray = qdataObj.ud.uopt[row + 1].split("-");

            $.each(temparray, function(key, arrval) {
                if (arrval == '#') {
                    count = count + 1;
                }
            });
        }

        if (count == temparray.length) {
            return "<span class='na_class'>NA</span>";
        } else if (qdataObj.ud.uopt[row + 1] == qdataObj.ud.corropt[row]) {//correct
            obtained_marks = parseInt(qdataObj.qmeta[row].cp);
            return "<span class='take_marks_row' > + " + obtained_marks + "</span>";
        } else {
            obtained_marks = " - " + parseInt(qdataObj.qmeta[row].incp);
            if (parseInt(qdataObj.qmeta[row].incp) == 0) {
                obtained_marks = '0';
            }
            return "<span class='take_marks_row' >" + obtained_marks + "</span>";
        }
    }
    return "";
}

function updateTips(t, error_span) {

    $("#" + error_span)
				.text(t)
				.addClass("validation_error");
    setTimeout(function() {
        $("#" + error_span).removeClass("validation_error", 1500);
    }, 500);

}

function checkLength(o, n, min, max, error_span) {
    if (o.val().length > max || o.val().length < min) {
        o.addClass("validation_error");
        updateTips("Length of " + n + " must be between " +
				min + " and " + max + ".", error_span);
        return false;
    } else {
        o.removeClass("validation_error");
        return true;
    }
}

function checkRegexp(o, regexp, n, error_span) {
    if (!(regexp.test(o.val()))) {
        o.addClass("validation_error");
        updateTips(n, error_span);
        return false;
    } else {
        o.removeClass("validation_error");
        return true;
    }
}
function disableFunc() {
    $(".mtoolbar").hide();
    $("#btnlogin").hide();
    $("#save_result").hide();
    $('#save_result').unbind();
    $('#btnlogin').unbind();
    $('#formloader').html("<img src='" + stconurl + "images/loader_testvv.gif' alt='loader' />");
}

function enableFunc() {
    $(".mtoolbar").show();
    $("#save_result").show();
    $("#btnlogin").show();
    $("#save_result").bind("click", { t: 1 }, pre_save_result);
    $("#btnlogin").bind("click", { t: 1 }, pre_loggin);
    $('#formloader').html("");
}

function removeEl() {
    if ($("#save_result")) {
        $("#save_result").remove();
        $("#btnlogin").remove();
        $('#formloader').remove('');
    }
}

function pre_loggin(a) {

    var bValid = true;
    $("#btnlogin").attr('onclick', '');
    var email_id = $("#email_id"),
			upassword = $("#upassword")
    allFields = $([]).add(email_id).add(upassword);

    allFields.removeClass("validation_error_login");
    bValid = bValid && checkRegexp(email_id, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "Please enter valid email address only.", 'validation_error_login');
    bValid = bValid && checkRegexp(upassword, /([^\s])/, "Password should not be left blank.", 'validation_error_login');
    if (bValid) {
        disableFunc();
        updateTips('Please wait...', 'validation_error_login');
        save_result1();
    } else {
        enableFunc();
    }
}



function pre_save_result(a) {
    var bValid = true;
    var first_name = $("#first_name"),
			last_name = $("#last_name"),
			email_student = $("#email_student"),
			mob_student = $("#mob_student"),
			recaptcha_response_field = $("#recaptcha_response_field")
    allFields = $([]).add(first_name).add(last_name).add(email_student).add(mob_student).add(recaptcha_response_field);
    allFields.removeClass("validation_error_reg");
    //allFields.removeClass( "validation_error" );
    bValid = bValid && checkLength(first_name, "First name", 3, 16, 'validation_error_reg');
    bValid = bValid && checkLength(last_name, "Last name", 3, 16, 'validation_error_reg');
    bValid = bValid && checkLength(email_student, "Email", 6, 80, 'validation_error_reg');

    bValid = bValid && checkRegexp(first_name, /^[a-zA-Z]+$/i, "First name may consist of a-z.", 'validation_error_reg');
    bValid = bValid && checkRegexp(last_name, /^[a-zA-Z]+$/i, "Last name may consist of a-z.", 'validation_error_reg');
    bValid = bValid && checkRegexp(email_student, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "Please enter valid email address only.", 'validation_error_reg');
    if (trim(mob_student.val()) != '') {
        bValid = bValid && checkRegexp(mob_student, /[0-9]{10}/, "Mobile number may consist of 10 digits only.", 'validation_error_reg');
    }
    bValid = bValid && checkRegexp(recaptcha_response_field, /([^\s])/, "Captcha should not be left blank.", 'validation_error_reg');

    if (bValid) {
        disableFunc();
        updateTips('Please wait...', 'validation_error_reg');
        var result = save_result();
    } else {
        enableFunc();
        showRecaptcha1();
    }
}

function signup_form() {
    var registrationForm = "<h2 style='color:#91ce2d'>For New User</h2><table width='80%' border='0' cellspacing='0' cellpadding='5' class='frm_table'><tr><td colspan='2'></td><span id='validation_error_reg'></span></td></tr><tr><td>First Name<span class='required'> *</span></td><td><input type='text' name='first_name' id='first_name' value='' /><div id='first_name_error' class='required'></div></td></tr><tr><td>Last Name<span class='required'> *</span></td><td><input type='text' name='last_name' id='last_name' value='' /><div id='last_name_error' class='required'></div></td></tr><tr><td>Email ID<span class='required'> *</span></td><td><input type='text' name='email_student' id='email_student' value='' /><div id='email_student_error' class='required'></div></td></tr><tr><td>Mobile Number</td><td><input type='text' name='mob_student' id='mob_student' value='' /><div id='mob_student_error' class='required'></div></td></tr><tr><td colspan='2'><div id='captchacode' align='left'></div></td></tr><tr><td>&nbsp;</td><td><span class='mtoolbar'><button title='Save result' id='save_result' onclick='pre_save_result();'>Submit</button></span></td></tr></table>";

    var loginForm = "<h2 style='padding-left:5px; color:#91ce2d'>Existing User</h2><table width='100%' border='0' cellspacing='0' cellpadding='5' class='frm_table'><tr><td colspan='2'><span id='validation_error_login'></span></td><td></tr><tr><td>Email ID<span class='required'> *</span></td><td><input type='text' name='email_id' id='email_id' value='' /><div id='email_id_error' class='required'></div></td></tr><tr><td>Password<span class='required'> *</span></td><td><input type='password' name='upassword' id='upassword' value='' /><div id='upassword_error' class='required'></div></td><tr><td>&nbsp;</td><td><span class='mtoolbar'><button title='Login' onclick='pre_loggin();' id='btnlogin'>Login</button>&nbsp;&nbsp;<a href='javascript:void(0);' class='forgot_password' onclick='forgotPasswordForm();' title='Forgot Password'>Forgot Password</a></span></td></tr></table>";
    var forgotPassAnchor = "";
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Save result</span><span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='clear:both;'><span id='formbox'><table width='100%' border='0' cellpadding='0' cellspacing='0'><tr><td style='border-right:1px solid #CCCCCC'>" + registrationForm + "</td><td valign='top'>" + loginForm + "" + forgotPassAnchor + "</td></tr></table></span><span id='formloader'></span></p>");
    showRecaptcha1();
    $("#various2").fancybox({
        'modal': true,
        'autoScale': true
    });

    $("#inline2").css('width', 700);
    $("#various2").trigger('click');

}

function pre_forgotPassword() {
    var bValid = true;
    var email_id = $("#email_id"),
		recaptcha_response_field = $("#recaptcha_response_field"),
		allFields = $([]).add(email_id).add(recaptcha_response_field);
    allFields.removeClass("validation_error");
    bValid = bValid && checkRegexp(email_id, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "Please enter valid email address only.", 'validation_error');
    if (bValid) {
        $(".mtoolbar").hide();
        updateTips('Please wait...', 'validation_error');
        var result = forgotPassword();
    } else {
        showRecaptcha1();
    }
}

function forgotPasswordForm() {
    var forgotPassword = "<table width='100%' border='0' cellspacing='0' cellpadding='5' class='frm_table'><tr><td colspan='2'></td><span id='validation_error'></span></td></tr><tr><td>Email ID<span class='required'> *</span></td><td><input type='text' name='email_id' id='email_id' value='' /><div id='email_id_error' class='required'></div></td></tr><tr><td colspan='2'><div id='captchacode' align='left'></div></td></tr><tr><td>&nbsp;</td><td><span class='mtoolbar'><button title='Forgot Password Submit' id='forgot_pass' onclick='pre_forgotPassword();'>Submit</button>&nbsp;&nbsp;<button onclick='signup_form();' title='Cancel' id='issue_cancel'>Cancel</button><span></td></tr></table>";
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Forgot Password</span><span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='clear:both;'><div style='style='float:left'>" + forgotPassword + "</div></div></p>");
    showRecaptcha1();
    $("#inline2").css('width', 350);
    $("#various2").trigger('click');

}

function askForRegistration() {
    $(".alert_wrapper").html("");
    $("#inline2").html("<span class='our_title'>Save result</span><span class='for_close'><a href='javascript:void(0);' onclick='$.fancybox.close();' title='Close'>x</a></span><p><div class='alert_wrapper' align='center' style='clear:both;'><div style='style='float:left'>Do you wish to save result & analysis for later use?<br><br><span class='mtoolbar'><button title='Registration / Login Form' onclick='signup_form();'>Yes</button>&nbsp;&nbsp;<button onclick='$.fancybox.close();' title='Close'>No, Thanks</button><span></div></div></p>");
    $("#inline2").css('width', 350);
    $("#various2").trigger('click');
}

function publishSolutionProviderInfo(solprovid) {
    var infoCorner = "";
    if (gsols.sp) {
        infoCorner += "<tr><th>Solution By</th></tr>";
        infoCorner += "<tr><td class='solprovinfo_name'>" + gsols.sp[solprovid].salutation + ' ' + gsols.sp[solprovid].name + "</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>" + gsols.sp[solprovid].organization + "</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>" + gsols.sp[solprovid].city + "</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>&nbsp;</td></tr>";
    } else {
        infoCorner += "<tr><th>Solution By</th></tr>";
        infoCorner += "<tr><td class='solprovinfo_name'>NA</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>NA</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>NA</td></tr>";
        infoCorner += "<tr><td class='solprovinfo_other'>&nbsp;</td></tr>";
    }
    $('#solprovinfo').html("<table>" + infoCorner + "</table>");
}

function getYouTubeVideoIds(qdataObj) {

    if (vidInfo == 1) {
        return false;
    }
    var mqid = parseInt(qdataObj.qmeta.qid);
    if (vidInfo.qd[mqid]) {
        return vidInfo.qd[mqid][0];
        //alert(qdataObj.qmeta.qid+' - '+vidInfo.qd[mqid][0].myvid);
    } else {
        return false;
    }
}

//After submission ends

//Youtube api starts
function showVideo(ytvid) {
    var videoID = ytvid;
    // Lets Flash from another domain call JavaScript
    var params = { allowScriptAccess: "always", allowfullscreen: 'true', wmode: 'opaque' };
    // The element id of the Flash embed
    var atts = { id: "ytPlayer" };
    // All of the magic handled by SWFObject (http://code.google.com/p/swfobject/)
    swfobject.embedSWF("http://www.youtube.com/v/" + videoID + "?version=3&enablejsapi=1&playerapiid=player1",
					   "videoDiv", "480", "295", "9", null, null, params, atts);
    //videoDiv
}
//youtube api ends here
function eventTracker(category, action) {
    if (typeof _gaq !== "undefined" && _gaq !== null) {
        var uriSegment = window.location.href.split('/');
        var url = '';
        if (typeof uriSegment[3] !== 'undefined' && typeof uriSegment[4] !== 'undefined') {
            var url = '/' + uriSegment[3] + '/' + uriSegment[4];
        }
        _gaq.push(['_trackEvent', category, action, url]);
    }
}

function toggleSolutionArea() {
    if ($("#solution_button").hasClass("solution_btn_hide")) {
        $("#solution_button").removeClass('solution_btn_hide');
        $("#solution_button").addClass("solution_btn_show");
    }
    else {
        $("#solution_button").removeClass('solution_btn_show');
        $("#solution_button").addClass("solution_btn_hide");
    }
    $(".solution_wrapper").slideToggle("slow");
}