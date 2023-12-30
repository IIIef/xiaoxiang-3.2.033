.class public final Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "ProtectTimesActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;",
        "Lcom/jiabaida/little_elephant/ui/base/BaseActivity;",
        "()V",
        "cmdEntity",
        "Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;",
        "data",
        "Ljava/util/ArrayList;",
        "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
        "attachLayoutRes",
        "",
        "initData",
        "",
        "initView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "toProtectJson",
        "Lorg/json/JSONObject;",
        "cmd",
        "updateProtect",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cmdEntity:Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/KeyValEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$49P29GF9GdRYLoiiWFpDvdRiGq4(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->initView$lambda-0(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->cmdEntity:Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$updateProtect(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->updateProtect(Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V

    return-void
.end method

.method private static final initView$lambda-0(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->finishActivity()V

    return-void
.end method

.method private final updateProtect(Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V
    .locals 2

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "protectStatistics"

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->toProtectJson(Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->syncBatteryInformation(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a001f

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 8

    const p1, 0x7f0800c3

    .line 33
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const v0, 0x7f0800f9

    .line 34
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0802a0

    .line 35
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0802a2

    .line 36
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const v1, 0x7f080165

    .line 37
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0700ca

    .line 38
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    move-object v5, p1

    check-cast v5, Landroid/view/View;

    const-string v4, ""

    move-object v2, p0

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 44
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance p1, Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->data:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    const v2, 0x7f0a0026

    invoke-direct {p1, v2, v0}, Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;-><init>(ILjava/util/List;)V

    .line 47
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-direct {v0, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 46
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->cmdEntity:Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;

    invoke-direct {v1, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;)V

    check-cast v1, Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 67
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->cmdEntity:Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public toProtectJson(Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "shortCircuitProtectNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "chargeOvercurrentNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "dischargeOvercurrentNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "monomerOverpressureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "monomerUndervoltageNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "chargeHighTemperatureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "chargeLowTemperatureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "dischargeHighTemperatureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "dischargeLowTemperatureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "overallOverpressureNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "overallUndervoltageNum"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xb

    if-le v1, v3, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "systemRestartNum"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
