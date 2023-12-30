.class public Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "BluetoothPasswordActivity.java"


# instance fields
.field private edPsw:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->checkFormat()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->edPsw:Landroid/widget/EditText;

    return-object p0
.end method

.method private checkFormat()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->edPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    :goto_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    const v1, 0x7f0d009f

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private goToBluetoothList()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    .line 176
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$4;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a001c

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0800f9

    .line 46
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f080260

    .line 49
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0802a0

    .line 50
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00b5

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0800a6

    .line 52
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->edPsw:Landroid/widget/EditText;

    .line 53
    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 66
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d00b4

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0049

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :goto_0
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->secondPswStatus:Z

    if-eqz p1, :cond_2

    :cond_1
    const p1, 0x7f080050

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f080299

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$2;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08021d

    .line 99
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity$3;-><init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-jiabaida-little_elephant-ui-activity-BluetoothPasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->finishActivity()V

    return-void
.end method

.method public onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x271b

    const-string v2, "BluetoothMac"

    if-ne v0, v1, :cond_5

    .line 133
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2716

    const v1, 0x7f0d0116

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveFirstPsw:Z

    if-eqz p1, :cond_2

    .line 134
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :cond_2
    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_3

    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_3

    sget p1, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v0, 0x2719

    if-ne p1, v0, :cond_4

    .line 139
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    :cond_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->edPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->goToBluetoothList()V

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x271c

    if-ne v0, v1, :cond_6

    .line 147
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_6
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2724

    if-ne v0, v1, :cond_7

    .line 149
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_7
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result v0

    const/16 v1, 0x2722

    if-ne v0, v1, :cond_8

    .line 161
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->goToBluetoothList()V

    goto :goto_0

    .line 165
    :cond_8
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;->getMsgCode()I

    move-result p1

    const/16 v0, 0x2723

    if-ne p1, v0, :cond_9

    .line 167
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected useEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
