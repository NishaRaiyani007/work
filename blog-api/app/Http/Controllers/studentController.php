<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\student;

class studentController extends Controller
{
    //
    function list()
    {
        return student::all();
    }
    function addstudent(Request $request)
    {
        $student = new student();
        $student->title = $request->title;
        $student->heading = $request->heading;
        $student->description = $request->description;
        $student->contect = $request->contect;
        if ($student->save()) {
            return ["result" => "student added"];
        } else {
            return ["result" => "operation failed"];
        }
    }

    function updatestudent(Request $request)
    {
        $student = student::find($request->id);
        $student->title = $request->title;
        $student->heading = $request->heading;
        $student->description = $request->description;
        $student->contect = $request->contect;
        if ($student->save()) {
            return ["result" => "student update"];
        } else {
            return ["result" => "student not update"];
        }
    }

    function deletestudent($id)
    {
        $student = student::destroy($id);
        if ($student) {
            return ['result' => "student record delete"];
        } else {
            return ['result' => "student record not delete"];
        }
    }

    function searchstudent($title)
    {
        $student = student::where('title', 'like', "%$title")->get();
        if ($student) {
            return ["result" => $student];
        } else {
            return ["result" => "no record found"];
        }
    }
}

