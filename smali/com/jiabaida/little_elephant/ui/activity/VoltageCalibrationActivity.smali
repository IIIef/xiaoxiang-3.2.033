.class public Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "VoltageCalibrationActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.VoltageCalibrationActivity"


# instance fields
.field private InputPram:Z

.field private WriteLine:[B

.field private adjustCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyRootParamsTitle:Landroid/widget/LinearLayout;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private recyclerViewVoltage:Landroidx/recyclerview/widget/RecyclerView;

.field private resProcess:I

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

.field private voltageItemBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 57
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->WriteLine:[B

    .line 67
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->resProcess:I

    .line 155
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->InputPram:Z

    return p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->InputPram:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->resProcess:I

    return p0
.end method

.method static synthetic access$102(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->resProcess:I

    return p1
.end method

.method static synthetic access$108(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->resProcess:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->resProcess:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;)Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->recyclerViewVoltage:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0045

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;->setOnItemClickListener(Lcom/jiabaida/little_elephant/adapter/VoltageAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 75
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 77
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 78
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 80
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 81
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 82
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080131

    .line 88
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->llyRootParamsTitle:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f080176

    .line 90
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->recyclerViewVoltage:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    sget-object p1, Lcom/jiabaida/little_elephant/app/Constant_xx;->NowsingleVoltageBeanList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 93
    sget-object p1, Lcom/jiabaida/little_elephant/app/Constant_xx;->NowsingleVoltageBeanList:Ljava/util/List;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    .line 94
    new-instance p1, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    .line 95
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->recyclerViewVoltage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    new-instance v2, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    .line 104
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getVoltageCMDEntity()Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iget v4, v4, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v4, v4, v6

    const-string v6, "mV"

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;-><init>(ILjava/lang/String;FLjava/lang/String;)V

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageItemBeanList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->voltageAdapter:Lcom/jiabaida/little_elephant/adapter/VoltageAdapter;

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->recyclerViewVoltage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    :cond_2
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 115
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 117
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 118
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;->cmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
