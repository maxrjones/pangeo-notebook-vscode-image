# Begin tests, which are useful for ensuring packages are properly installed.

def test_import():
    import xarray as xr
    print(xr.show_versions())
