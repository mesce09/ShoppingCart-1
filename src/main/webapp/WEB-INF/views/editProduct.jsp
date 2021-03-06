<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="commonTemplates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edit Product</h1>
			<p>Find the required information below to edit product:</p>
		</div>
		
		<form:form action="${pageContext.request.contextPath}/admin/product/editProduct " method="post" 
			commandName="product" enctype="multipart/form-data">
			
			<form:hidden path ="id" value="${product.id }" />
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="name" id="name" class="form-control" value="${product.name}"/>
			</div>
			
			<div class="form-group">
				<label for="category">Category</label>
				<label class="checkbox-inline"> <form:radiobutton path="category" id="category" 
													value="instrument" />Instrument</label>
				<label class="checkbox-inline"> <form:radiobutton path="category" id="category" 
													value="record" />Record</label>
				<label class="checkbox-inline"> <form:radiobutton path="category" id="category" 
													value="accessory" />Accessory</label>									
			</div>
			
			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="description" id="description" class="form-control" value="${product.description }"/>
			</div>
			
			<div class="form-group">
				<label for="price">Price</label>
				<form:input path="price" id="price" class="form-control" value="${product.price}"/>
			</div>
			
			<div class="form-group">
				<label for="condition">Condition</label>
				<label class="checkbox-inline"> <form:radiobutton path="condition" id="condition" 
													value="new" />New</label>
				<label class="checkbox-inline"> <form:radiobutton path="condition" id="condition" 
													value="used" />Used</label>								
			</div>
			
			<div class="form-group">
				<label for="status">Status</label>
				<label class="checkbox-inline"> <form:radiobutton path="status" id="status" 
													value="active" />Active</label>
				<label class="checkbox-inline"> <form:radiobutton path="status" id="status" 
													value="inactive" />Inactive</label>								
			</div>
			
			<div class="form-group">
				<label for="units">Units in Stock</label>
				<form:input path="units" id="units" class="form-control" value="${product.units}" />
			</div>
			
			<div class="form-group">
				<label for="manufacturer">Product Manufacturer</label>
				<form:input path="manufacturer" id="manufacturer" class="form-control" value="${product.manufacturer}" />
			</div>
			
			<div class="form-group">
				<label class="control-label" for="image">Upload Image</label>
				<form:input path="image" id="image" type="file" class="form:input-large" />
			</div>
			
			<br/><br/>
			
			<input type="submit" value="submit" class="btn btn-outline-success">
			<a href="<c:url value="/admin/productInventory"/>" class="btn btn-outline-primary">Cancel</a>
		
		</form:form>

<%@include file="commonTemplates/footer.jsp" %>