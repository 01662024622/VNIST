 <?php if (isset($_SESSION['login'])&&$_SESSION['login']==true){ ?>
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        <!-- Modal -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
//    $(document).ready(function() {
//        $('#dataTables-example').DataTable({
//            responsive: true
//        });
//    });
    </script>
    <script type="text/javascript" charset="utf-8" async defer>
        $(function(){
            setTimeout(function(){
                $('.alert').hide();
            },3000);
        });
        $(document).ready(function() {
            $('#table').DataTable({
                responsive: true
            });
        });
        $(".delete").click(function(e){
            e.preventDefault();
            var url = $(this).attr("href");
            if (confirm("Bạn có muốn xóa ?")) {
                window.location.href=url;
            }
            
        });
    </script>
    <script src="../js/checkForm.js" type="text/javascript" charset="utf-8" async defer></script>

</body>

</html>
<?php } ?>