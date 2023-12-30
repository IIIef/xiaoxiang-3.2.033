.class public Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ConnectResistanceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.ConnectResistanceActivity"


# instance fields
.field private InputPram:Z

.field private ResistanceNumber:I

.field private WriteLine:[B

.field private Writecontent:[B

.field private closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

.field private closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private flTopBack:Landroid/widget/FrameLayout;

.field gson:Lcom/google/gson/Gson;

.field private ivTopBack:Landroid/widget/ImageView;

.field private llyTopTitleBg:Landroid/widget/RelativeLayout;

.field private paramProcess:I

.field private paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private resistanceAdapter:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

.field private resistanceEntity:Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

.field private resistanceItemBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private rvResistance:Landroidx/recyclerview/widget/RecyclerView;

.field timeHandler:Landroid/os/Handler;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceItemBeanList:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 60
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->WriteLine:[B

    new-array v0, v0, [B

    .line 64
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->Writecontent:[B

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->paramProcess:I

    .line 188
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->timeHandler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 299
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$5;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    .line 313
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$6;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$6;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method private GetResisArray()Ljava/lang/String;
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceItemBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 349
    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceItemBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceItemBeanList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->getParams()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private UpdateResis()V
    .locals 3

    .line 331
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceItemBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "internalResistance"

    .line 336
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->GetResisArray()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->InputPram:Z

    return p0
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->InputPram:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceEntity:Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceAdapter:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->checkProcess()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->UpdateResis()V

    return-void
.end method

.method private checkProcess()V
    .locals 1

    .line 241
    iget v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->paramProcess:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->paramProcess:I

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->hideLoading()V

    .line 244
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->UpdateResis()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0045

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 118
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->QueueTag:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showLoading()V

    .line 120
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceEntity:Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    .line 121
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->paramsResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 122
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceEntity:Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 124
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceAdapter:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->setOnItemClickListener(Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 82
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 83
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 84
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 85
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->tvTopTitleR:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f080137

    .line 87
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->llyTopTitleBg:Landroid/widget/RelativeLayout;

    .line 88
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 89
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080176

    .line 95
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->rvResistance:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 101
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->factoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 103
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    .line 104
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->closeFactoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->closeFactoryResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 111
    new-instance p1, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->resistanceAdapter:Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->rvResistance:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
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
