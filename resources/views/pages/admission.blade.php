<?php
  $title = 'Admission';
  $banner_title = 'La formation IMAC';
  $img = 'DSC00034.jpg';
?>

@extends('layouts.default')

@section('title')
    Être admis à l’IMAC | IMAC ingénieur
@endsection

@section('script')
    <script src="../vendor/jquery/dist/jquery.js"></script>
    <script src="{{URL::asset('../js/home.js')}}"></script>
@endsection

@section('content')
    @include('includes.banner', array('img' => $img, 'title' => $banner_title))
    @include('includes.subnav', array('img' => $img, 'title' => $title))
    <!-- @include('includes.ariane', array('title' => 'Youpi')) -->
    <div class="container">
        <div class="col-8 center-block">
            <h1 class="title-1">Les conditions d'admission</h1>
            <h2 class="title-2 center">Le profil des IMAC</h2>
            <p class="lead">Les IMAC possèdent une imagination et un désir de créer qui dépassent le clivage arts/sciences.</p>
            <p>En effet, leur ouverture d’esprit leur permet d’avoir un intérêt aussi bien pour les arts (arts graphiques, cinéma, musique, arts numériques...) que les sciences (programmation, mathématiques, traitement du signal…) sans pour autant être spécialiste de chacun de ces domaines. En suivant la formation IMAC, ils élargissent leur champ de compétences.</p>
            <p>Dans une volonté de recrutement hétérogène, l'école est accessible sur dossier à tout étudiant disposant d'un niveau BAC+2.</p>

            <div class="secondary-color-framed">
                <div class="secondary-color-framed">
                    <p class="secondary-color-framed-title">Formations scientifiques</p>
                    <p>Classes préparatoires, DUT Informatique, DUT MMI (anciennement SRC), Licence Maths et Informatique, Licence Physique…</p>
                </div>
                <div class="secondary-color-framed">
                    <p class="secondary-color-framed-title">Formations artistiques</p>
                    <p>BTS Communication Visuelle, BTS Audiovisuel, Licence Cinéma…</p>
                </div>
                <p class="secondary-color-framed-title bottom">Les IMAC<br /><span class="lnr lnr-heart"></span></p>
            </div>
        </div>
    </div>

    <div class="light-row">
        <div class="container">
            <div class="col-8 center-block">
                <h2 class="title-2 center">Candidatures</h2>
                <p class="lead side-padding">L'admission repose sur une évaluation du dossier et éventuellement un entretien individuel. Le jury s'intéresse aux connaissances acquises dans différents domaines : sciences (informatique et mathématiques) et aux créations artistiques diverses (multimédia, audiovisuel, créations plastiques...).</p>
            </div>
            <div class="col-4 col-offset-2">
                <h3 class="title-3"><span class="lnr lnr-pencil lnr-bigger"></span> La procédure de candidature</h3>
                <p>Les candidatures pour la rentrée {{$dates['year']}} seront ouvertes à partir du {{$dates['openning']}}. Les candidatures s'effectuent depuis le site de l'Université Paris-Est Marne-la-Vallée (UPEM), dont la formation dépend (<a href="http://candidatures.univ-mlv.fr" target="_blank">http://candidatures.univ-mlv.fr</a>).
                <p>Date limite de dépôt des dossiers :</p>
      	        <ul>
                    <li>1ère session : {{$dates['first_session']}}</li>
                    <li>2ème session : {{$dates['second_session']}}</li>
            </div>
            <div class="col-4 row-offset">
                <h3 class="title-3"><span class="lnr lnr-paperclip lnr-bigger"></span> Le dossier à préparer</h3>
                <p>Le candidat doit fournir obligatoirement son dossier scolaire (relevés de notes), une lettre de motivation et son CV. Il est également fortement conseillé de joindre un portfolio détaillé regroupant des créations ou bien de justifier de sa sensibilité artistique.</p>
                <p>Il est possible d'intégrer la formation directement en deuxième année si les diplômes attestent du niveau requis (Bac+3).</p>
            </div>
                <p class="center"><a class="btn filled-btn primary-btn" target="_BLANK" href="https://candidatures.u-pem.fr/">Déposer votre candidature</a></p>
        </div>
    </div>

    <div>
        <div class="container">
            <h2 class="title-2 center">Paroles d'anciens</h2>
            @include('includes.testimonial', $student_testimonials)
        </div>
    </div>
@endsection
