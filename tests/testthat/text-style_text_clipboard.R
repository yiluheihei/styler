context("style_text() support clipboard")

test_that("style_text() support clipboard", {
  skip_if_not(clipr_available())
  write_clip("c(    1,       16    , 333 , 33 ,  1)")
  expect_equal(style_text(), construct_vertical("c(1, 16, 333, 33, 1)"))
})
