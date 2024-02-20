pxl_file <- system.file("extdata/PBMC_10_cells",
                        "Sample01_test.pxl",
                         package = "testRCMDcheck")

test_that("Unzip works", {
  expect_no_error({result_dir <- unzip(pxl_file, files = "polarization.parquet", exdir = tempdir())})
  print(result_dir)
})
