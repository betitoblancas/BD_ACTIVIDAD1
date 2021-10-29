<?php

namespace App\Http\Controllers;

use App\Models\Libros;
use Illuminate\Http\Request;

class librosController extends Controller
{
    public function index(){
        $libros = Libros::all();
        return view('info.index', compact('libros'));
    }
}
