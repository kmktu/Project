<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="">�Ź� ���� ������</a>
                <a class="navbar-brand hidden" href=""></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="./index"> <i class="menu-icon fa fa-dashboard"></i>Ȩ����</a>
                    </li>
                    <h3 class="menu-title"></h3><!-- /.menu-title -->
                    <li class="menu-item">
                        <a href="./notice" class="toggle" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>��������</a>
                      
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="./index" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>�Ź�����</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i> <a href="./index.jsp?page=main_bott">�� �ǹ�</a></li>
                            <li><i class="fa fa-table"></i><a href="tables-data.html">�ְ� �ǹ�</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>�ڷ��</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i> <a href="./index.jsp?page=write">�����ڷ�</a></li>
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">��Ÿ</a></li>
                        </ul>
                    </li>

                 
            </div><!-- /.navbar-collapse -->
        </nav>
</body>
</html>