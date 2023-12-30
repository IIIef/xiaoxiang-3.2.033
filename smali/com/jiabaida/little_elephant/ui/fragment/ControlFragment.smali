.class public Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;
.super Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;
.source "ControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.fragment.ControlFragment"


# instance fields
.field private WriteLine:[B

.field private adjustEntity:Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

.field private autoBalance:Lcom/jiabaida/little_elephant/entity/ControlBean;

.field private btn_charge:Landroid/widget/TextView;

.field private btn_discharge:Landroid/widget/TextView;

.field private cleanAlarm:Lcom/jiabaida/little_elephant/entity/ControlBean;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private controlBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ControlBean;",
            ">;"
        }
    .end annotation
.end field

.field private currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private gridView:Landroid/widget/GridView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

.field private mHandler:Landroid/os/Handler;

.field private resProcess:I

.field private reset:Lcom/jiabaida/little_elephant/entity/ControlBean;

.field private switchDisShargeState:Z

.field private switchShargeState:Z

.field private switch_charge:Landroid/widget/TextView;

.field private switch_discharge:Landroid/widget/TextView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchShargeState:Z

    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchDisShargeState:Z

    new-array v1, v0, [B

    .line 84
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->WriteLine:[B

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    .line 89
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->resProcess:I

    .line 492
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 511
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 525
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$5;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 541
    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetChargeState()V
    .locals 3

    .line 355
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchChargeState(Z)V

    .line 358
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    invoke-direct {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchDisChargeState(Z)V

    .line 361
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sp_key_ble_auth"

    invoke-virtual {v0, v2, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 362
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 364
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 369
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 372
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->autoBalance:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cleanAlarm:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->reset:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 383
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showAdjustCurrent()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->adjustEntity:Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->adjustEntity:Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->GetChargeState()V

    return-void
.end method

.method private showAdjustCurrent()V
    .locals 4

    .line 304
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    const v2, 0x7f0d00eb

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;

    invoke-direct {v3, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$2;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/view/InputDialogHelper;->showDialog(Landroid/content/Context;FLjava/lang/String;Lcom/jiabaida/little_elephant/view/InputDialogHelper$DialogMyListener;)V

    return-void
.end method

.method private switchChargeState(Z)V
    .locals 4

    .line 220
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchShargeState:Z

    .line 222
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f07008a

    goto :goto_0

    :cond_0
    const v1, 0x7f070089

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_charge:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f0700c7

    goto :goto_1

    :cond_1
    const v2, 0x7f0700c6

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f0d011f

    goto :goto_2

    :cond_2
    const v2, 0x7f0d011e

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p1, :cond_3

    .line 229
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_3
    return-void
.end method

.method private switchDisChargeState(Z)V
    .locals 4

    .line 241
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchDisShargeState:Z

    .line 243
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f070093

    goto :goto_0

    :cond_0
    const v1, 0x7f070092

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_discharge:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f0700c7

    goto :goto_1

    :cond_1
    const v2, 0x7f0700c6

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f0d011f

    goto :goto_2

    :cond_2
    const v2, 0x7f0d011e

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0057

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_charge:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_discharge:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initDataList(Z)V
    .locals 2

    .line 558
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 560
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 567
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->autoBalance:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cleanAlarm:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->reset:Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f080137

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800c3

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->flTopBack:Landroid/widget/FrameLayout;

    const v0, 0x7f0802a0

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->tvTopTitle:Landroid/widget/TextView;

    const v0, 0x7f0802a2

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->tvTopTitleR:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->tvTopTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->tvTopTitleR:Landroid/widget/TextView;

    const-string v4, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v0, 0x7f080032

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_charge:Landroid/widget/TextView;

    const v0, 0x7f080035

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->btn_discharge:Landroid/widget/TextView;

    const v0, 0x7f0800c8

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->gridView:Landroid/widget/GridView;

    const v0, 0x7f0801a6

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    const v0, 0x7f0801a7

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    .line 145
    new-instance p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0700fa

    invoke-direct {p1, v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/ControlBean;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->autoBalance:Lcom/jiabaida/little_elephant/entity/ControlBean;

    .line 146
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x7f0700ff

    invoke-direct {p1, v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/ControlBean;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->currentCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    .line 148
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    const v0, 0x7f0d012c

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const v2, 0x7f0700fd

    invoke-direct {p1, v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/ControlBean;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->voltageCalibration:Lcom/jiabaida/little_elephant/entity/ControlBean;

    .line 150
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const v2, 0x7f070100

    invoke-direct {p1, v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/ControlBean;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cleanAlarm:Lcom/jiabaida/little_elephant/entity/ControlBean;

    .line 153
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const v2, 0x7f0700fe

    invoke-direct {p1, v1, v2, v0}, Lcom/jiabaida/little_elephant/entity/ControlBean;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->reset:Lcom/jiabaida/little_elephant/entity/ControlBean;

    .line 155
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->controlBeans:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/jiabaida/little_elephant/adapter/ControlAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->mAdapter:Lcom/jiabaida/little_elephant/adapter/ControlAdapter;

    .line 159
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;-><init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchChargeState(Z)V

    .line 204
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchDisChargeState(Z)V

    .line 206
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 207
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 209
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 210
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method protected initViewPager(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 405
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 435
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 437
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;-><init>()V

    .line 439
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setLockState(Ljava/lang/String;ZZ)V

    .line 440
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 441
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_1

    .line 443
    :cond_0
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;-><init>()V

    .line 444
    sget-byte v1, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->DISCHARGE:B

    if-eqz p1, :cond_1

    sget-byte v2, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->CLOSE:B

    goto :goto_0

    :cond_1
    sget-byte v2, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->OPEN:B

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->setContent(BB)V

    .line 445
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 446
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_1
    xor-int/lit8 p1, p1, 0x1

    .line 449
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchDisChargeState(Z)V

    goto :goto_4

    .line 415
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_charge:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 418
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBaseInfoCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->isOldVersion:Z

    if-eqz v1, :cond_2

    .line 419
    new-instance v1, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;-><init>()V

    .line 420
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switch_discharge:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setLockState(Ljava/lang/String;ZZ)V

    .line 421
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSLockOldCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 422
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_3

    .line 424
    :cond_2
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;-><init>()V

    .line 425
    sget-byte v1, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->CHARGE:B

    if-eqz p1, :cond_3

    sget-byte v2, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->CLOSE:B

    goto :goto_2

    :cond_3
    sget-byte v2, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->OPEN:B

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->setContent(BB)V

    .line 426
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 427
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_3
    xor-int/lit8 p1, p1, 0x1

    .line 430
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->switchChargeState(Z)V

    :goto_4
    return-void

    .line 408
    :cond_4
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0155

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showDefaultMsg(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0801a6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    sget-object p1, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->TAG:Ljava/lang/String;

    sput-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->GetChargeState()V

    .line 109
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "sp_key_ble_auth"

    invoke-virtual {p1, v1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->initDataList(Z)V

    .line 112
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "BluetoothMac"

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryDevicePermissions(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseLazyFragment;->onResume()V

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
