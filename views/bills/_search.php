<?php
/* @var $searchModel \App\Domains\Bill\BillSearch */

use App\Domains\Bill\Bill;
use App\Domains\Client\Client;
use App\Domains\Company;
use dosamigos\datepicker\DatePicker;
use kartik\select2\Select2;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>

<?php $form = ActiveForm::begin(['method' => 'get', 'validateOnBlur' => false]) ?>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                <i class="glyphicon glyphicon-search"></i> Filtros para Pesquisa
            </h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-1">
                    <?= $form->field($searchModel, 'id') ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($searchModel, 'dueDateStart')->widget(DatePicker::class, [
                        'language' => 'pt',
                        'clientOptions' => [
                            'autoclose' => true,
                            'format' => 'dd/mm/yyyy',
                        ]
                    ]) ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($searchModel, 'dueDateEnd')->widget(DatePicker::class, [
                        'language' => 'pt',
                        'clientOptions' => [
                            'autoclose' => true,
                            'format' => 'dd/mm/yyyy',
                        ]
                    ]) ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($searchModel, 'client_id')->widget(Select2::class, [
                        'data' => Client::dropdownOptions('name'),
                        'language' => 'pt-BR',
                        'options' => ['placeholder' => ':: Selecione um Cliente ::'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]) ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($searchModel, 'company')->dropDownList(Company::labels(), [
                        'prompt' => ':: TODOS ::'
                    ]) ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($searchModel, 'status')->dropDownList(Bill::getStatusList(), [
                        'prompt' => ':: TODOS ::'
                    ]) ?>
                </div>
                <div class="col-md-1" style="margin-top: 24px">
                    <?= Html::submitButton('<i class="glyphicon glyphicon-search"></i>', [
                        'class' => 'btn btn-primary'
                    ]) ?>
                </div>
            </div>
            <div>
                <small class="help-block">
                    <i class="glyphicon glyphicon-info-sign"></i>
                    <strong>Importante: </strong> se for feito um filtro pelo o <strong>N?? do Recibo</strong>, todos os outros campos ser??o desconsiderados.
                </small>
            </div>
        </div>
    </div>
<?php ActiveForm::end() ?>

