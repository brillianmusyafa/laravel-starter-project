@extends('layouts.halaman_muka')

@section('content')


<div class="moto">
    <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
            <img src="{{asset('logo_tegal.png')}}" class="img-responsive" alt="Image" width="175px">        
        </div>
        <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">

           <!-- <center> -->
             <h1>PEMERINTAH KABUPATEN TEGAL</h1>
            <h1>{{config('app.judul')}}</h1>
            <hr>
            <h1>"PUSAT KONSULTASI APBD"</h1>
            <!-- </center> -->
            <div style="height: 100px;"></div>
        </div>
    </div>
    

</div>
<div class="row">
    <div class="col-md-6">
        <?php $i=1; ?>
        @foreach($cat as $item)
        @if($i%2==1)
        <div class="row">
            @endif
            <div class="col-md-12 col-lg-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{$item->nama_kategori}}</h3>
                    </div>
                    <div class="panel-body">
                        <p>{{$item->nama_group}}</p>
                        <p>CP : {{$item->cp}}</p>
                    </div>
                </div>
            </div>
            @if($i%2==0)
        </div>
        @endif

        <?php $i++; ?>
        @endforeach
    </div>
    <div class="col-md-6">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Informasi tentang klinik keuangan daerah</h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>
    </div>
</div>
@endsection