 <ul class="navigation">
                        <li class="menu-dropdown {{ Request::is('dashboard') ? 'active' : '' }}">
                            <a href="{{ URL::to('/dashboard') }}"
                                style="color: {{ Request::is('dashboard') ? '#33cc99' : '' }}">
                                <i class="fa fa-fw ti-receipt"></i> ড্যাশবোর্ড
                            </a>
                        </li>

                        <li
                            class="menu-dropdown {{ Request::is('create-general_member') || Request::is('general-member') || Request::is('business-hold') || Request::is('all-business_hold') || Request::is('all_business_hold_active') || Request::is('all_business_hold_inactive') || Request::is('general-member-active') || Request::is('general-member-inactive') || Request::is('edit-general_member*') || Request::is('edit-business_hold*') || Request::is('family.class') ? 'active' : '' }}">
                            <a href="#">
                                <i class="fa fa-fw ti-receipt"></i>এসেসমেন্ট নিবন্ধন
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu ">
                                <li>
                                    <a href="#"> <i class="fa fa-fw ti-receipt"></i> বসত বাড়ী হোল্ডিং </a>
                                </li>
                                <div style="margin-left: 25px;">
                                    @if (Auth::user()->email == 'meyor@gmail.com')
                                    @else
                                        <li>
                                            <a href="{{ route('create.general_member') }}"
                                                style="color: {{ Request::is('create-general_member') ? '#33cc99' : '' }}">
                                                <i class="fa fa-fw ti-receipt"></i> অ্যাড
                                            </a>
                                        </li>
                                    @endif
                                    <li>
                                        <a href="{{ route('action.search') }}" id="" style="color: ;"> <i
                                                class="fa fa-fw ti-receipt"></i> একটিভ / ডিএকটিভ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ URL::to('/new-bosot_index') }}" id="all_bosot_bari"
                                            style="color: {{ Request::is('new-bosot_index') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> মোট ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('general_member_active') }}" id="all_bosot_bari_active"
                                            style="color: {{ Request::is('general-member-active') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> একটিভ ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('general_member_inactive') }}" id="all_bosot_bari_inactive"
                                            style="color: {{ Request::is('general-member-inactive') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> পেন্ডিং ইউজার
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ route('family.class') }}"
                                            style="color: {{ Request::is('family.class') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> পরিবারের শ্রেণীবিন্যাস
                                        </a>
                                    </li>

                                </div>
                                <li>
                                    <a href="#"> <i class="fa fa-fw ti-receipt"></i> বানিজ্যিক হোল্ডিং</a>
                                </li>
                                <div style="margin-left: 25px;">
                                    @if (Auth::user()->email == 'meyor@gmail.com')
                                    @else
                                        <li>
                                            <a href="{{ route('business.hold') }}"
                                                style="color : {{ Request::is('business-hold') ? '#33cc99' : '' }}">
                                                <i class="fa fa-fw ti-receipt"></i> অ্যাড
                                            </a>
                                        </li>
                                    @endif
                                    <li>
                                        <a href="{{ route('all_business_hold') }}"
                                            style="color : {{ Request::is('all-business_hold') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> মোট ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('all_business_hold_active') }}"
                                            style="color : {{ Request::is('all_business_hold_active') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> একটিভ ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('all_business_hold_inactive') }}"
                                            style="color : {{ Request::is('all_business_hold_inactive') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> পেন্ডিং ইউজার
                                        </a>
                                    </li>

                                </div>
                                <li>
                                    <a href="#"> <i class="fa fa-fw ti-receipt"></i> কমার্শিয়াল হোল্ডিং</a>
                                </li>
                                <div style="margin-left: 25px;">
                                    @if (Auth::user()->email == 'meyor@gmail.com')
                                    @else
                                        <!--                                        <li>
                                                                                    <a href="{{ route('commercial.hold') }}"
                                                                                        style="color : {{ Request::is('commercial-hold') ? '#33cc99' : '' }}">
                                                                                        <i class="fa fa-fw ti-receipt"></i> অ্যাড
                                                                                    </a>
                                                                                </li>-->
                                    @endif
                                    <li>
                                        <a href="{{ route('all_commercial_hold') }}"
                                            style="color : {{ Request::is('all-commercial_hold') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> মোট ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('all_commercial_hold_active') }}"
                                            style="color : {{ Request::is('all_commercial_hold_active') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> একটিভ ইউজার
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('all_commercial_hold_inactive') }}"
                                            style="color : {{ Request::is('all_commercial_hold_inactive') ? '#33cc99' : '' }}">
                                            <i class="fa fa-fw ti-receipt"></i> পেন্ডিং ইউজার
                                        </a>
                                    </li>
                                </div>

                            </ul>
                        </li>

                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li
                                class="menu-dropdown {{ Request::is('create-chairmen') || (Request::is('all-chairmen') || Request::is('edit-chairmen*') || Request::is('post-code') || Request::is('create-post_code') || Request::is('edit-post_code*') || Request::is('post-office') || Request::is('create-post_office') || Request::is('edit-post_office*') || Request::is('ward') || Request::is('edit-ward*') || Request::is('create-ward') || Request::is('village') || Request::is('create-village') || Request::is('edit-village*') || Request::is('occupation') || Request::is('create-occupation') || Request::is('business-type') || Request::is('create-business_type') || Request::is('edit-business_type*')) ? 'active' : '' }}">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>‌অন্যান্য সেটআপ
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">

                                    <li>
                                        <a href="#"> <i class="fa fa-fw ti-receipt"></i> ইউনিয়ন ইনফরমেশন
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('post.code') }}"
                                            style="color: {{ Request::is('post-code') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> পোস্ট কোড সেটআপ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('post.office') }}"
                                            style="color: {{ Request::is('post-office') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> ডাকঘর সেটআপ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('ward') }}"
                                            style="color: {{ Request::is('ward') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> ওয়ার্ড
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('village') }}"
                                            style="color: {{ Request::is('village') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> গ্রাম
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('occupation') }}"
                                            style="color: {{ Request::is('occupation') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> পেশা
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('business.type') }}"
                                            style="color: {{ Request::is('business-type') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> ব্যবসার ধরণ
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li
                                class="menu-dropdown {{ Request::is('house-type') || Request::is('edit-house_type*') || Request::is('create-house_type') || Request::is('house-rate') || Request::is('create-house_rate') || Request::is('edit-house_rate*') || Request::is('business-rate') || Request::is('create-business_rate') || Request::is('edit-business_rate*') || Request::is('trade-fee') || Request::is('create-trade') || Request::is('edit-trade*') ? 'active' : '' }}">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>কর রেট সেটআপ
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">
                                    <li>
                                        <a href="{{ route('house.type') }}"
                                            style="color: {{ Request::is('house-type') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i>বাড়ির ধরণ সেটআপ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('house_type.rate') }}"
                                            style="color: {{ Request::is('house-rate') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> বসতবাড়ীর হোল্ডিং কর রেট
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('business.rate') }}"
                                            style="color: {{ Request::is('business-rate') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i>বানিজ্যিক হোল্ডিং কর রেট
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('trade.fee') }}"
                                            style="color: {{ Request::is('trade-fee') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> ট্রেড লাইসেন্স ফি
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li class="menu-dropdown" id="rate_open_close">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>‌ওয়েবসাইট সেটিংস
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">
                                    <li>
                                        <a style="display: none;" href="{{ route('create.chaimen') }}"
                                            style="color: {{ Request::is('create-chairmen') ? '#33cc99' : '' }}"> <i
                                                class="fa fa-fw ti-receipt"></i> মেয়র
                                        </a>

                                        <a href="{{ URL::to('/create-meyor') }}"> <i class="fa fa-fw ti-receipt"></i>
                                            মেয়র
                                        </a>
                                    </li>

                                    <li>


                                        <a href="{{ URL::to('/all-slider') }}"> <i class="fa fa-fw ti-receipt"></i>
                                            স্লাইডার
                                        </a>
                                    </li>


                                    <li>


                                        <a href="{{ URL::to('/welcome-description') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>স্বাগতম বিবরণ
                                        </a>
                                    </li>


                                    <li>


                                        <a href="{{ URL::to('/councilors') }}"> <i class="fa fa-fw ti-receipt"></i>
                                            সম্মানিত কাউন্সিলরগণ
                                        </a>
                                    </li>


                                    <li>


                                        <a href="{{ URL::to('/councilors-mohila') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>
                                            সংরক্ষিত আসনের কাউন্সিলরগণ
                                        </a>
                                    </li>



                                    <li>


                                        <a href="{{ URL::to('/important-topic') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>গুরুত্বপূর্ণ লিঙ্কসমূহ/গুরুত্বপূর্ণ
                                            আবেদনপত্র
                                        </a>
                                    </li>



                                </ul>
                            </li>

                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li class="menu-dropdown">
                                <a href="{{ route('trade.approvel') }}" id="dashboard">
                                    <i class="fa fa-fw ti-receipt"></i> ট্রেড লাইসেন্স আবেদনের তালিকাসমূহ
                                </a>
                            </li>
                            <li class="menu-dropdown">
                                <a href="{{ URL::to('/trade-due') }}" id="dashboard">
                                    <i class="fa fa-fw ti-receipt"></i> ট্রেড লাইসেন্স বকেয়সমূহ
                                </a>
                            </li>
                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li class="menu-dropdown" id="rate_open_close">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>
                                    সুবিধাভোগীদের তথ্য

                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">
                                    <li>
                                        <a href="{{ URL::to('/add-beneficiaries') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>অ্যাড
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ URL::to('/all-beneficiaries') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>মোট তালিকা
                                        </a>
                                    </li>


                                    <li>
                                        <a href="{{ URL::to('/all-allowance') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>ভাতা
                                            তালিকা
                                        </a>
                                    </li>


                                </ul>
                            </li>

                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                            <li class="menu-dropdown">
                                <a href="{{ URL::to('/all-report') }}">
                                    <i class="fa fa-fw ti-receipt"></i> রিপোর্ট
                                </a>
                            </li>


                        @else
                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li class="menu-dropdown" id="rate_open_close">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>‌সনদের আবেদনসমূহ
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">
                                    <li>
                                        <a href="{{ URL::to('/all-nagorik_sonod') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>নাগরিক সনদ
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ URL::to('/all-character_sonod') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>চারিত্রিক সনদ
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ URL::to('/all-warish_sonod') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>ওয়ারিশ সনদ
                                        </a>
                                    </li>


                                    <li>
                                        <a href="{{ URL::to('/all-dead_sonod') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>মৃত্যু সনদ
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ URL::to('/all-orphan_sonod') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>এতিম সনদ
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if (Auth::user()->email == 'meyor@gmail.com')
                        @else
                            <li class="menu-dropdown" id="rate_open_close">
                                <a href="#">
                                    <i class="fa fa-fw ti-receipt"></i>‌বসতবাড়ি বকেয়াসমূহ
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu ">
                                    <li>
                                        <a href="{{ URL::to('/new-bosot_bokeya_list') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>বকেয়া কর তালিকা
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ URL::to('/new_total_bosot_bokeya_list') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>মোট তালিকা
                                        </a>
                                    </li>


                                    <li>
                                        <a href="{{ URL::to('/new_bosot_due_aday_list') }}"> <i
                                                class="fa fa-fw ti-receipt"></i>আদায় তালিকা
                                        </a>
                                    </li>

                                </ul>
                            </li>


                        @endif
                        @if (Auth::user()->role == 'Super Admin' && Auth::user()->email == 'superadmin@gmail.com')
                            <li>
                                <a href="{{ route('supportAdmin.index') }}"> <i class="fa fa-fw ti-receipt"></i>
                                    সাপোর্ট
                                    এডমিন
                                </a>
                            </li>
                        @endif
                    </ul>