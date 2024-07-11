<div id="kt_app_footer" class="app-footer">
    <!--begin::Footer container-->
    <div class="app-container container-fluid d-flex flex-column flex-md-row flex-center flex-md-stack py-3">
        <!--begin::Copyright-->
        <div class="text-dark order-2 order-md-1">
            <span class="text-muted fw-semibold me-1">2024&copy;</span>
            <a href="<?php echo e(url('/')); ?>" target="_blank" class="text-gray-800 text-hover-primary"><?php echo e($site->site_name); ?></a>
        </div>
        <!--end::Copyright-->
        <!--begin::Menu-->

        <!--end::Menu-->
    </div>
    <!--end::Footer container-->
</div>
<!--end::Footer-->
</div>
<!--end:::Main-->
</div>
<!--end::Wrapper-->
</div>
<!--end::Page-->
</div>
<!--end::App-->
<!--begin::Drawers-->
<!--begin::Activities drawer-->
<div id="kt_activities" class="bg-body" data-kt-drawer="true" data-kt-drawer-name="activities" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '900px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_activities_toggle" data-kt-drawer-close="#kt_activities_close">
<div class="card shadow-none border-0 rounded-0">
<!--begin::Header-->
<div class="card-header" id="kt_activities_header">
<h3 class="card-title fw-bold text-dark">Activity Logs</h3>
<div class="card-toolbar">
<button type="button" class="btn btn-sm btn-icon btn-active-light-primary me-n5" id="kt_activities_close">
    <i class="ki-duotone ki-cross fs-1">
        <span class="path1"></span>
        <span class="path2"></span>
    </i>
</button>
</div>
</div>
<!--end::Header-->
<!--begin::Body-->
<div class="card-body position-relative" id="kt_activities_body">
<!--begin::Content-->
<div id="kt_activities_scroll" class="position-relative scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_activities_body" data-kt-scroll-dependencies="#kt_activities_header, #kt_activities_footer" data-kt-scroll-offset="5px">
<!--begin::Timeline items-->

<!--end::Timeline items-->
</div>
<!--end::Content-->
</div>
<!--end::Body-->
<!--begin::Footer-->
<div class="card-footer py-5 text-center" id="kt_activities_footer">
<a href="../../demo1/dist/pages/user-profile/activity.html" class="btn btn-bg-body text-primary">View All Activities
<i class="ki-duotone ki-arrow-right fs-3 text-primary">
<span class="path1"></span>
<span class="path2"></span>
</i></a>
</div>
<?php /**PATH /home/smsnot/tanyalifestyles.nrrectrust.org/admin/resources/views/admin/inc/footer.blade.php ENDPATH**/ ?>