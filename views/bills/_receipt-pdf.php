<?php
/** @var App\Domains\Bill\Bill $bill */

use App\Domains\Company;
use WGenial\NumeroPorExtenso\NumeroPorExtenso;
use yii\helpers\Html;

$numeroExtenso = new NumeroPorExtenso();
$numeroExtenso = $numeroExtenso->converter($bill->amount);
$companyConfig = Company::config($bill->company);
?>
<table>
    <tr>
        <td style="width: 100px">
            <?= Html::img($companyConfig['logo'], ['width' => $companyConfig['logoWidth']]) ?>
        </td>
        <td style="width: 500px; text-align: center">
            <h1 style="font-size: 24pt">RECIBO #<?= $bill->getNumber() ?></h1>
            <h2 style="font-size: 12pt">
                Telefone: <?= $companyConfig['phone'] ?><br />
                E-mail: <?= $companyConfig['email'] ?>
            </h2>
        </td>
        <td style="width: 170px; text-align: right">
            <h1 style="font-size: 20pt; text-decoration: underline">
                <?= Yii::$app->formatter->asCurrency($bill->amount) ?>
            </h1>
        </td>
    </tr>
</table>

<hr style="margin: 20px 0; border-color: #000">

<p style="margin-bottom: 70px; font-size: 14pt; letter-spacing: -1px">
    Recebi do Sr(a).
    <span style="font-weight: bold; font-size: 17pt; text-transform: uppercase"><?= $bill->client->name ?></span>
    a importância de
    <span style="font-weight: bold; font-size: 17pt; text-transform: uppercase"><?= $numeroExtenso ?></span>
    referente a
    <span style="font-weight: bold; font-size: 17pt; text-transform: uppercase"><?= $bill->description ?></span>
    para que firmamos o presente recibo para os devidos fins e efeitos legais.
</p>

<table>
    <tr>
        <td style="width: 550px; font-size: 15pt">Fortaleza, <?= date('d/m/Y') ?></td>
        <td style="width: 350px; text-align: center">
            <?= Html::img($companyConfig['signature'], ['width' => $companyConfig['signatureWidth']]) ?><br />
            <hr>
            <?= $companyConfig['representativeName'] ?>
        </td>
    </tr>
</table>
