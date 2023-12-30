.class public Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "UnBindDeviceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.ui.activity.UnBindDeviceActivity"


# instance fields
.field private authorizeBt:Landroid/widget/Button;

.field private bindBleRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

.field private bindSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private ivTopBack:Landroid/widget/ImageView;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->requestBindList()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->startUnBind(Ljava/lang/String;)V

    return-void
.end method

.method private requestBindList()V
    .locals 8

    const-string v0, ""

    .line 173
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    const-string v3, "sp_key_ble_auth"

    invoke-virtual {v2, v3, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 182
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 183
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "command"

    const/16 v5, 0x84

    .line 184
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "token"

    .line 185
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v6

    const-string v7, "sp_key_user_token"

    invoke-virtual {v6, v7}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    .line 186
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "txnNo"

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showLoading()V

    .line 191
    new-instance v2, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v2}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 192
    invoke-virtual {v2, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 195
    invoke-virtual {v2, v5}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 196
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    :goto_0
    return-void
.end method

.method private requestBlePermissions()V
    .locals 7

    const-string v0, ""

    .line 82
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "command"

    const/16 v4, 0x88

    .line 84
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "data"

    .line 85
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "txnNo"

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    .line 89
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v5

    const-string v6, "sp_key_user_token"

    invoke-virtual {v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showLoading()V

    .line 92
    new-instance v1, Lcom/jiabaida/little_elephant/socket/PkgDataBean;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;-><init>()V

    .line 93
    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setData(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setTxnNo(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setCmd(I)V

    .line 96
    invoke-virtual {v1, v4}, Lcom/jiabaida/little_elephant/socket/PkgDataBean;->setMsgType(I)V

    .line 97
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/NettyClient;->getInstance()Lcom/jiabaida/little_elephant/socket/NettyClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/socket/NettyClient;->sendDatas(Lcom/jiabaida/little_elephant/socket/PkgDataBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    :goto_0
    return-void
.end method

.method private startUnBind(Ljava/lang/String;)V
    .locals 3

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d019d

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0051

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 106
    new-instance v0, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    .line 107
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindBleRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->requestBindList()V

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 116
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$2;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->setOnDeviceClickListener(Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 62
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 63
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 64
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 65
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f080025

    .line 66
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->authorizeBt:Landroid/widget/Button;

    .line 67
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d019c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 69
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->authorizeBt:Landroid/widget/Button;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801a2

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 75
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    const p1, 0x7f080174

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindBleRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-UnBindDeviceActivity(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->finishActivity()V

    return-void
.end method

.method synthetic lambda$initView$1$com-jiabaida-little_elephant-ui-activity-UnBindDeviceActivity(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->requestBlePermissions()V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 6
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

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x80

    const-string v2, "receive event  128"

    const-string v3, "code"

    const/4 v4, 0x1

    const-string v5, "status"

    if-eq v0, v1, :cond_7

    const/16 v1, 0x84

    if-eq v0, v1, :cond_5

    const/16 v1, 0x88

    if-eq v0, v1, :cond_1

    const/16 v1, 0x89

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_2

    const p1, 0x7f0d00ab

    .line 251
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/jiabaida/little_elephant/view/DialogHelper;->showSureDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x7e2

    if-ne p1, v1, :cond_3

    const p1, 0x7f0d0038

    .line 254
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x7e3

    if-ne p1, v1, :cond_4

    const p1, 0x7f0d0039

    .line 256
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 234
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 235
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;

    .line 236
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->clear()V

    .line 237
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BindDeviceListBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->addDeviceList(Ljava/util/List;)V

    .line 238
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->bindDevicesAdapter:Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 241
    :cond_6
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_7
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->hideLoading()V

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->requestBindList()V

    goto :goto_0

    .line 225
    :cond_8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CauseUtils;->getCauseStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
