<?php

namespace App\Http\Controllers;

use Hash;
use Illuminate\Http\Request;
use SebastianBergmann\CodeCoverage\Test\TestStatus\Success;
use App\Models\User;


class userauthcontroller extends Controller
{

    function login(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return ['result' => "user not found", "Success" => false];
        }
        $success['token'] = $user->createToken('MyApp')->plainTextToken;
        $success['name'] = $user->name;

        return ['result' => $success, 'msg' => "user register successfully"];


    }


    function signup(Request $request)
    {
        $input = $request->all();
        $input["password"] = bcrypt($input["password"]);
        $user = User::create($input);
        $success['token'] = $user->createToken('MyApp')->plainTextToken;
        $user['name'] = $user->name;
        return ['success' => true, "result" => $success, "msg" => "user register successfully"];

    }
}

