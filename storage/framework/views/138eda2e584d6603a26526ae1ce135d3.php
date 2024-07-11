<?php $__env->startSection('content'); ?>
    <div id="kt_app_content" class="app-content flex-column-fluid">
        <!--begin::Content container-->
        <div id="kt_app_content_container" class="app-container container-xxl">
            <!--begin::Form-->
            <form id="kt_ecommerce_add_product_form" action="<?php echo e(route('sitesettings.update', 1)); ?>"
                class="form d-flex flex-column flex-lg-row" data-kt-redirect="" method="POST" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
                <?php echo method_field('put'); ?>
                <!--begin::Aside column-->
                <div class="d-flex flex-column gap-7 gap-lg-10 w-100 w-lg-300px mb-7 me-lg-10">
                    <!--begin::Thumbnail settings-->
                    <div class="card card-flush py-4">
                        <!--begin::Card header-->
                        <div class="card-header">
                            <!--begin::Card title-->
                            <div class="card-title">
                                <h2> Logo</h2>
                            </div>
                            <!--end::Card title-->
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body text-center pt-0">
                            <!--begin::Image input-->
                            <!--begin::Image input placeholder-->
                            <style>
                                .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image.svg');
                                }

                                [data-bs-theme="dark"] .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image-dark.svg');
                                }
                            </style>
                            <!--end::Image input placeholder-->
                            <div class="image-input image-input-empty image-input-outline image-input-placeholder mb-3"
                                data-kt-image-input="true">
                                <!--begin::Preview existing avatar-->
                                <div class="image-input-wrapper w-150px h-150px"></div>
                                <!--end::Preview existing avatar-->
                                <!--begin::Label-->
                                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
                                    <i class="ki-duotone ki-pencil fs-7">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                    <!--begin::Inputs-->
                                    <input type="file" name="logo" />
                                    <input type="hidden" name="avatar_remove" />
                                    <!--end::Inputs-->
                                </label>
                                <!--end::Label-->
                                <!--begin::Cancel-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Cancel-->
                                <!--begin::Remove-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Remove-->
                            </div>
                            <!--end::Image input-->
                            <!--begin::Description-->
                            <div class="text-muted fs-7">Set the product thumbnail image. Only *.png, *.jpg and *.jpeg image
                                files are accepted</div>
                            <?php if(isset($data->logo) && file_exists($data->logo)): ?>
                                <div class="pt-2">
                                    <a href="<?php echo e(asset($data->logo)); ?>" target="_blank">
                                        <img src="<?php echo e(asset($data->logo)); ?>" alt="" width="50" height="50">
                                    </a>
                                </div>
                            <?php endif; ?>
                            <!--end::Description-->
                        </div>
                        <!--end::Card body-->

                        <!--begin::Card header-->
                        <div class="card-header">
                            <!--begin::Card title-->
                            <div class="card-title">
                                <h2>Site Logo</h2>
                            </div>
                            <!--end::Card title-->
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body text-center pt-0">
                            <!--begin::Image input-->
                            <!--begin::Image input placeholder-->
                            <style>
                                .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image.svg');
                                }

                                [data-bs-theme="dark"] .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image-dark.svg');
                                }
                            </style>
                            <!--end::Image input placeholder-->
                            <div class="image-input image-input-empty image-input-outline image-input-placeholder mb-3"
                                data-kt-image-input="true">
                                <!--begin::Preview existing avatar-->
                                <div class="image-input-wrapper w-150px h-150px"></div>
                                <!--end::Preview existing avatar-->
                                <!--begin::Label-->
                                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
                                    <i class="ki-duotone ki-pencil fs-7">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                    <!--begin::Inputs-->
                                    <input type="file" name="site_logo" />
                                    <input type="hidden" name="avatar_remove" />
                                    <!--end::Inputs-->
                                </label>
                                <!--end::Label-->
                                <!--begin::Cancel-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Cancel-->
                                <!--begin::Remove-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Remove-->
                            </div>
                            <!--end::Image input-->
                            <!--begin::Description-->
                            <div class="text-muted fs-7">Set the product thumbnail image. Only *.png, *.jpg and *.jpeg image
                                files are accepted</div>
                            <?php if(isset($data->site_logo) && file_exists($data->site_logo)): ?>
                                <div class="pt-2">
                                    <a href="<?php echo e(asset($data->site_logo)); ?>" target="_blank">
                                        <img src="<?php echo e(asset($data->site_logo)); ?>" alt="" width="50"
                                            height="50">
                                    </a>
                                </div>
                            <?php endif; ?>
                            <!--end::Description-->
                        </div>
                        <!--end::Card body-->
                        <!--begin::Card header-->
                        <div class="card-header">
                            <!--begin::Card title-->
                            <div class="card-title">
                                <h2>Site Favicon</h2>
                            </div>
                            <!--end::Card title-->
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body text-center pt-0">
                            <!--begin::Image input-->
                            <!--begin::Image input placeholder-->
                            <style>
                                .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image.svg');
                                }

                                [data-bs-theme="dark"] .image-input-placeholder {
                                    background-image: url('<?php echo e(asset('admin')); ?>/<?php echo e(asset('admin')); ?>/assets/media/svg/files/blank-image-dark.svg');
                                }
                            </style>
                            <!--end::Image input placeholder-->
                            <div class="image-input image-input-empty image-input-outline image-input-placeholder mb-3"
                                data-kt-image-input="true">
                                <!--begin::Preview existing avatar-->
                                <div class="image-input-wrapper w-150px h-150px"></div>
                                <!--end::Preview existing avatar-->
                                <!--begin::Label-->
                                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
                                    <i class="ki-duotone ki-pencil fs-7">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                    <!--begin::Inputs-->
                                    <input type="file" name="favicon" />
                                    <input type="hidden" name="avatar_remove" />
                                    <!--end::Inputs-->
                                </label>
                                <!--end::Label-->
                                <!--begin::Cancel-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Cancel-->
                                <!--begin::Remove-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
                                    <i class="ki-duotone ki-cross fs-2">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                    </i>
                                </span>
                                <!--end::Remove-->
                            </div>
                            <!--end::Image input-->
                            <!--begin::Description-->
                            <div class="text-muted fs-7">Set the product thumbnail image. Only *.png, *.jpg and *.jpeg
                                image files are accepted</div>

                            <?php if(isset($data->favicon) && file_exists($data->favicon)): ?>
                                <div class="pt-2">
                                    <a href="<?php echo e(asset($data->favicon)); ?>" target="_blank">
                                        <img src="<?php echo e(asset($data->favicon)); ?>" alt="" width="50"
                                            height="50">
                                    </a>
                                </div>
                            <?php endif; ?>
                            <!--end::Description-->
                        </div>
                        <!--end::Card body-->
                    </div>
                    <!--end::Thumbnail settings-->




                </div>
                <!--end::Aside column-->
                <!--begin::Main column-->
                <div class="d-flex flex-column flex-row-fluid gap-7 gap-lg-10">
                    <!--begin:::Tabs-->
                    <ul class="nav nav-custom nav-tabs nav-line-tabs nav-line-tabs-2x border-0 fs-4 fw-semibold mb-n2">
                        <!--begin:::Tab item-->
                        <li class="nav-item">
                            <a class="nav-link text-active-primary pb-4 active" data-bs-toggle="tab"
                                href="#kt_ecommerce_add_product_general">Site </a>
                        </li>
                        <!--end:::Tab item-->
                    </ul>
                    <!--end:::Tabs-->
                    <!--begin::Tab content-->
                    <div class="tab-content">
                        <!--begin::Tab pane-->
                        <div class="tab-pane fade show active" id="kt_ecommerce_add_product_general" role="tab-panel">
                            <div class="d-flex flex-column gap-7 gap-lg-10">
                                <!--begin::General options-->
                                <div class="card card-flush py-4">
                                    <!--begin::Card header-->
                                    <div class="card-header">
                                        <div class="card-title">
                                            <h2>Site Details</h2>
                                        </div>
                                    </div>
                                    <!--end::Card header-->
                                    <!--begin::Card body-->
                                    <div class="card-body pt-0">
                                        <!--begin::Input group-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Site Name</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" required name="site_name" class="form-control mb-2"
                                                value="<?php echo e($data->site_name ?? ''); ?>"
                                                placeholder="Portfolio Name or Title" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <div class="text-muted fs-7">A Portfolio name is required and recommended
                                                to be unique.</div>
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Input group-->
                                            <!--begin::Label-->
                                            <label class="form-label">Short Description</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="short_description" required
                                                class="form-control mb-2" placeholder="Site Short Description"
                                                value="<?php echo e($data->short_description ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <div class="text-muted fs-7">Place the Short Description</div>
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">

                                            <head>
                                                <meta charset="UTF-8">
                                                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                                                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
                                                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
                                                <link
                                                    href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css"
                                                    rel="stylesheet">
                                                <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
                                            </head>
                                            <!--begin::Input group-->
                                            <!--begin::Label-->
                                            <label class="form-label">Description</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <textarea id="description" name="description" required>
                                                    <?php echo $data->description ?? ''; ?>

                                                </textarea>
                                            <!--end::Input-->
                                            <!--start::Script-->
                                            <script>
                                                $('textarea#description').summernote({
                                                    placeholder: 'Description',
                                                    tabsize: 2,
                                                    height: 100,
                                                    toolbar: [
                                                        ['style', ['style']],
                                                        ['font', ['bold', 'italic', 'underline', 'clear']],
                                                        ['color', ['color']],
                                                        ['para', ['ul', 'ol', 'paragraph']],
                                                        ['height', ['height']],
                                                        ['table', ['table']],
                                                        ['insert', ['link', 'picture', 'hr']],
                                                        ['help', ['help']]
                                                    ],
                                                });
                                            </script>
                                            <!--end::Script-->

                                            <!--begin::Description-->
                                            <div class="text-muted fs-7">Place the Description</div>
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->

                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">address</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="address" class="form-control mb-2"
                                                placeholder="Enter address" value="<?php echo e($data->address ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">email</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="email" name="email" required class="form-control mb-2"
                                                placeholder="Enter email " value="<?php echo e($data->email ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Phone</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="tel" name="phone" class="form-control mb-2"
                                                placeholder="Enter Phone" value="<?php echo e($data->phone ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Customer Care No</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="customer_care_no" name="customer_care_no"
                                                class="form-control mb-2" placeholder="Enter Customer Care No "
                                                value="<?php echo e($data->customer_care_no ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Help Line No</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="help_line_no" class="form-control mb-2"
                                                placeholder="Enter Help Line No "
                                                value="<?php echo e($data->help_line_no ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Site URL</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="site_url" class="form-control mb-2"
                                                placeholder="Enter Site Url " required
                                                value="<?php echo e($data->site_url ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->

                                            <!--end::Description-->
                                        </div>

                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Facebook URl</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="facebook" class="form-control mb-2"
                                                placeholder="Face Book URL" value="<?php echo e($data->facebook ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <div class="text-muted fs-7">Facebook URl.</div>
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Input group-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Telegram Link</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="telegram" class="form-control mb-2"
                                                value="<?php echo e($data->telegram ?? ''); ?>" placeholder="Telegram Link" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <div class="text-muted fs-7">A Telegram Link.</div>
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Input group-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Youtube URL</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="youtube" class="form-control mb-2"
                                                placeholder="Enter Youtube URL" value="<?php echo e($data->youtube ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Insta URl</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="instagram" class="form-control mb-2"
                                                placeholder="Enter Instagram URL" value="<?php echo e($data->instagram ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Whatsapp URl</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="pinterest" class="form-control mb-2"
                                                placeholder="Enter Whatsapp URL" value="<?php echo e($data->pinterest ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Linkedin URl</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="linkedin" class="form-control mb-2"
                                                placeholder="Enter linkedin URL" value="<?php echo e($data->linkedin ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->
                                        <!--begin::Card body-->
                                        <div class="mb-10 fv-row">
                                            <!--begin::Label-->
                                            <label class="required form-label">Twitter URl</label>
                                            <!--end::Label-->
                                            <!--begin::Input-->
                                            <input type="text" name="twitter" class="form-control mb-2"
                                                placeholder="Enter twitter URL" value="<?php echo e($data->twitter ?? ''); ?>" />
                                            <!--end::Input-->
                                            <!--begin::Description-->
                                            <!--end::Description-->
                                        </div>
                                        <!--end::Card body-->

                                    </div>
                                    <!--end::Card header-->
                                </div>
                                <!--end::General options-->
                            </div>
                        </div>
                        <!--end::Tab pane-->

                    </div>
                    <!--end::Tab content-->
                    <div class="d-flex justify-content-end">
                        <!--begin::Button-->

                        <!--end::Button-->
                        <!--begin::Button-->
                        <button type="submit" id="kt_ecommerce_add_product_submit" class="btn btn-primary">
                            <span class="indicator-label">Save Changes</span>
                            <span class="indicator-progress">Please wait...
                                <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                        </button>
                        <!--end::Button-->
                    </div>
                </div>
                <!--end::Main column-->
            </form>
            <!--end::Form-->
        </div>
        <!--end::Content container-->
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/smsnot/tanyalifestyles.nrrectrust.org/admin/resources/views/admin/site_settings/all.blade.php ENDPATH**/ ?>