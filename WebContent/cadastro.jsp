<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Cadastro</title>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" id="bootstrap-css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="cadastro.js"></script>
	<link rel="stylesheet" href="cadastro.css">
</head>

<body>
	<form class="form-horizontal">
		<fieldset>
		<div class="panel panel-primary">
				<div class="panel-heading">Cadastro de Cliente</div>
				
				<div class="panel-body">
		<div class="form-group">

		<div class="col-md-11 control-label">
						<p class="help-block"><h11>*</h11> Campo Obrigatório </p>
		</div>
		</div>
		
		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="Nome">Nome <h11>*</h11></label>  
			<div class="col-md-8">
			<input id="Nome" name="Nome" placeholder="" class="form-control input-md" required="" type="text">
			</div>
		</div>
		
		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="Nome">CPF <h11>*</h11></label>  
			<div class="col-md-2">
			<input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
			</div>
			
			<label class="col-md-1 control-label" for="Nome">Nascimento<h11>*</h11></label>  
			<div class="col-md-2">
			<input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">
		</div>
		
		<!-- Multiple Radios (inline) -->
		
			<label class="col-md-1 control-label" for="radios">Sexo<h11>*</h11></label>
			<div class="col-md-4"> 
				<label required="" class="radio-inline" for="radios-0" >
					<input name="sexo" id="sexo" value="feminino" type="radio" required>
					Feminino
				</label> 
				<label class="radio-inline" for="radios-1">
					<input name="sexo" id="sexo" value="masculino" type="radio">
					Masculino
				</label>
			</div>
		</div>
		
		<!-- Prepended text-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="prependedtext">Telefone <h11>*</h11></label>
			<div class="col-md-2">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
					<input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
					OnKeyPress="formatar('## #####-####', this)">
				</div>
			</div>
			
				<label class="col-md-1 control-label" for="prependedtext">Telefone</label>
				<div class="col-md-2">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
					<input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13"  pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
					OnKeyPress="formatar('## #####-####', this)">
				</div>
			</div>
		</div> 
		
		<!-- Prepended text-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="prependedtext">Email <h11>*</h11></label>
			<div class="col-md-5">
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
					<input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
				</div>
			</div>
		</div>
		
		
		<!-- Search input-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="CEP">CEP <h11>*</h11></label>
			<div class="col-md-2">
				<input id="cep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
			</div>
			<div class="col-md-2">
					<button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">Pesquisar</button>
				</div>
		</div>
		
		<!-- Prepended text-->
		<div class="form-group">
			<label class="col-md-2 control-label" for="prependedtext">Endereço</label>
			<div class="col-md-4">
				<div class="input-group">
					<span class="input-group-addon">Rua</span>
					<input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
				</div>
				
			</div>
				<div class="col-md-2">
				<div class="input-group">
					<span class="input-group-addon">Nº <h11>*</h11></span>
					<input id="numero" name="numero" class="form-control" placeholder="" required=""  type="text">
				</div>
				
			</div>
			
			<div class="col-md-3">
				<div class="input-group">
					<span class="input-group-addon">Bairro</span>
					<input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
				</div>
				
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-md-2 control-label" for="prependedtext"></label>
			<div class="col-md-4">
				<div class="input-group">
					<span class="input-group-addon">Cidade</span>
					<input id="cidade" name="cidade" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
				</div>
				
			</div>
			
			<div class="col-md-2">
				<div class="input-group">
					<span class="input-group-addon">Estado</span>
					<input id="estado" name="estado" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
				</div>
				
			</div>
		</div>
		
		<!-- Select Basic -->
		<div class="form-group">
			<label class="col-md-2 control-label" for="Estado Civil">Estado Civil <h11>*</h11></label>
			<div class="col-md-2">
				<select required id="Estado Civil" name="Estado Civil" class="form-control">
						<option value=""></option>
					<option value="Solteiro(a)">Solteiro(a)</option>
					<option value="Casado(a)">Casado(a)</option>
					<option value="Divorciado(a)">Divorciado(a)</option>
					<option value="Viuvo(a)">Viuvo(a)</option>
				</select>
			</div>
		</div>
		
		
		<!-- Select Basic -->
		<div class="form-group">
				
			<label class="col-md-2 control-label" for="selectbasic">Escolaridade <h11>*</h11></label>
			
			<div class="col-md-3">
				<select required id="escolaridade" name="escolaridade" class="form-control">
				<option value=""></option>
					<option value="Analfabeto">Analfabeto</option>
					<option value="Fundamental Incompleto">Fundamental Incompleto</option>
					<option value="Fundamental Completo">Fundamental Completo</option>
					<option value="Médio Incompleto">Médio Incompleto</option>
					<option value="Médio Completo">Médio Completo</option>
					<option value="Superior Incompleto">Superior Incompleto</option>
					<option value="Superior Completo">Superior Completo</option>
				</select>
			</div>

		<!-- Text input-->
		
			<label class="col-md-1 control-label" for="profissao">Profissão<h11>*</h11></label>  
			<div class="col-md-4">
			<input id="profissao" name="profissao" type="text" placeholder="" class="form-control input-md" required="">
				
			</div>
		</div>
		
		<div class="form-group">
		
		<label class="col-md-2 control-label" for="senha">Senha<h11>*</h11></label>  
			<div class="col-md-3">
			<input id="senha" name="senha" type="password" placeholder="" class="form-control input-md" required="">
				
			</div>
			
			<label class="col-md-2 control-label" for="senhaNovamente">Senha novamente<h11>*</h11></label>  
			<div class="col-md-3">
			<input id="senhaNovamente" name="senhaNovamente" type="password" placeholder="" class="form-control input-md" required="">
				
			</div>
		</div>
				
		<!-- Button (Double) -->
		<div class="form-group">
			<label class="col-md-2 control-label" for="Cadastrar"></label>
			<div class="col-md-8">
				<button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">Cadastrar</button>
				<button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">Cancelar</button>
			</div>
		</div>
		</div>
		</div>
		</fieldset>
	</form>
</body>
</html>