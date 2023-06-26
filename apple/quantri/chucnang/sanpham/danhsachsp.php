<script>
    function xoasp() {
        var conf = confirm("Bạn có muốn xóa sản phẩm này không?");
        return conf;
    }
</script>
<?php
$sql = "SELECT * FROM sanpham INNER JOIN dmsanpham ON sanpham.id_dm =dmsanpham.id_dm ORDER BY id_sp DESC";
$query = mysqli_query($conn, $sql);

// Phân Trang Sản Phẩm

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$rowPerPage = 10; //số sản phẩm hiển thị trên 1 trang
$perPage = $page * $rowPerPage - $rowPerPage;
$sql = "SELECT * FROM sanpham INNER JOIN dmsanpham ON sanpham.id_dm=dmsanpham.id_dm ORDER BY id_sp DESC LIMIT $perPage,$rowPerPage";
$query = mysqli_query($conn, $sql);
$totalRows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM sanpham"));
$totalPages = ceil($totalRows / $rowPerPage);
$listPage = "";
for ($i = 1; $i <= $totalPages; $i++) {
    if ($page == $i) {
        $listPage .= '<li class="active"><a href="quantri.php?page_layout=danhsachsp&page=' . $i . '">' . $i . '</a></li>';
    } else {
        $listPage .= '<li><a href="quantri.php?page_layout=danhsachsp&page=' . $i . '">' . $i . '</a></li>';
    }
}
?>

<!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý sản phẩm</h1>
    </div>
</div>
<!--/.row-->


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-body" style="position: relative;">
                <a href="quantri.php?page_layout=themsp" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm sản phẩm mới</a>
                <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                    <thead>
                        <tr>
                            <th data-sortable="true">ID</th>
                            <th data-sortable="true">Tên sản phẩm</th>
                            <th data-sortable="true">Giá</th>
                            <th data-sortable="true">Danh Mục</th>
                            <th data-sortable="true">Ảnh mô tả</th>
                            <th data-sortable="true">Sửa</th>
                            <th data-sortable="true">Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        while ($row = mysqli_fetch_array($query)) {
                        ?>
                            <tr style="height: 300px;">
                                <td data-checkbox="true"><?php echo $row['id_sp']; ?></td>
                                <td data-checkbox="true"><a href="quantri.php?page_layout=suasp&id_sp=<?php echo $row['id_sp']; ?>"><?php echo $row['ten_sp']; ?></a></td>
                                <td data-checkbox="true"><?php echo number_format($row['gia_sp'],0,",","."); ?></td>
                                <td data-sortable="true"><?php echo $row['ten_dm']; ?></td>
                                <td data-sortable="true">
                                    <span class="thumb"><img width="100px" height="100px" src="anh/<?php echo $row['anh_sp'] ?>" /></span>
                                </td>
                                <td>
                                    <a href="quantri.php?page_layout=suasp&id_sp=<?php echo $row['id_sp']; ?>"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                            </svg></span></a>
                                </td>
                                <td>
                                    <a onclick="return xoasp();" href="./chucnang/sanpham/xoasp.php?id_sp=<?php echo $row['id_sp']; ?>"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;">
                                                <i class="fa-solid fa-trash"></i>
                                            </svg></span></a>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
                <ul class="pagination" style="float: right;">
                    <?php
                    echo $listPage;
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--/.row-->