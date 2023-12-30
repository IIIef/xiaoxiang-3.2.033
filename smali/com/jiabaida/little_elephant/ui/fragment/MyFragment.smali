.class public Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.source "MyFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.fragment.MyFragment"


# instance fields
.field private device_layout:Landroid/widget/RelativeLayout;

.field private ivMyLogin:Landroid/widget/ImageView;

.field private llyMyAbout:Landroid/widget/LinearLayout;

.field private llyMyBattery:Landroid/widget/LinearLayout;

.field private llyMyBms:Landroid/widget/LinearLayout;

.field private llyMyInfo:Landroid/widget/LinearLayout;

.field private llyMyOutLogin:Landroid/widget/LinearLayout;

.field private llyUnbindDevice:Landroid/widget/LinearLayout;

.field private lly_my_line:Landroid/widget/LinearLayout;

.field private tvMyBattery:Landroid/widget/TextView;

.field private tvMyBms:Landroid/widget/TextView;

.field private tvMyLogin:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;-><init>()V

    return-void
.end method

.method private RefreshStatus()V
    .locals 4

    const-string v0, "sp_key_user_phone"

    const-string v1, "sp_key_user_name"

    const-string v2, ""

    .line 230
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 233
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 237
    :catch_1
    :goto_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->isLogin()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initLoginState(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyBattery:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyBms:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;ZLjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initLoginState(ZLjava/lang/String;)V

    return-void
.end method

.method private changeDevicesGone()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->device_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->device_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initLoginState(ZLjava/lang/String;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyLogin:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0d017b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyInfo:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyOutLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyLogin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050029

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->ivMyLogin:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070098

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyInfo:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyOutLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyLogin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050099

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->ivMyLogin:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070099

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0059

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyInfo:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$4;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyAbout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$5;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$5;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyBattery:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyBms:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$7;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$7;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyLogin:Landroid/widget/TextView;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$8;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$8;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyOutLogin:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$9;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyUnbindDevice:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->lly_my_line:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$11;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$11;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f080129

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyInfo:Landroid/widget/LinearLayout;

    const v0, 0x7f080068

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->device_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f08013b

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyUnbindDevice:Landroid/widget/LinearLayout;

    const v0, 0x7f080127

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyBattery:Landroid/widget/LinearLayout;

    const v0, 0x7f080128

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyBms:Landroid/widget/LinearLayout;

    const v0, 0x7f080126

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyAbout:Landroid/widget/LinearLayout;

    const v0, 0x7f08012b

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->llyMyOutLogin:Landroid/widget/LinearLayout;

    const v0, 0x7f0800eb

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->ivMyLogin:Landroid/widget/ImageView;

    const v0, 0x7f080242

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyLogin:Landroid/widget/TextView;

    const v0, 0x7f080240

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyBattery:Landroid/widget/TextView;

    const v0, 0x7f080241

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->tvMyBms:Landroid/widget/TextView;

    const v0, 0x7f08012a

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->lly_my_line:Landroid/widget/LinearLayout;

    const v0, 0x7f0802a6

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/app/XXApplication;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080141

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const v1, 0x7f080061

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 163
    sget-boolean v1, Lcom/jiabaida/little_elephant/util/IdsLog;->DEBUG_SAVE:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f080134

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08025b

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initViewPager(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .line 117
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->TAG:Ljava/lang/String;

    const-string v1, "receive event  104"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->hideLoading()V

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 97
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const-string p1, "code"

    .line 98
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->showDefaultMsg(Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_user_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_user_name"

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_user_pwd"

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "sp_key_ble_auth"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 105
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 106
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->disconnectAllDevice()V

    .line 107
    invoke-direct {p0, v2, v1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initLoginState(ZLjava/lang/String;)V

    .line 108
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->RefreshStatus()V

    :goto_0
    return-void
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->changeDevicesGone()V

    .line 130
    sget-object p1, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->TAG:Ljava/lang/String;

    sput-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->RefreshStatus()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->RefreshStatus()V

    .line 221
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->changeDevicesGone()V

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
