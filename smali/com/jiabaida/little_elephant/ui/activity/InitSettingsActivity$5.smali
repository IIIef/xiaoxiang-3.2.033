.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;
.super Landroid/os/Handler;
.source "InitSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 339
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->timeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/16 p1, 0x7530

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, ""

    if-eq v0, p1, :cond_7

    const/16 p1, 0x754f

    const/4 v6, 0x0

    if-eq v0, p1, :cond_6

    const/16 p1, 0x75a0

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7918

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7d00

    if-eq v0, p1, :cond_3

    const/16 p1, 0x7d01

    if-eq v0, p1, :cond_2

    const/16 p1, 0x7d03

    if-eq v0, p1, :cond_1

    const/16 p1, 0x7d04

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 422
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 408
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1, v6}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 409
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    .line 410
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    .line 411
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    const/16 v1, 0x70

    .line 412
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 413
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 414
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 415
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1502(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    goto/16 :goto_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1, v6}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 392
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 393
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    .line 394
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    .line 395
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 396
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v2, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 397
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 398
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 400
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1, v6}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 366
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 367
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    .line 368
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    .line 369
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    .line 370
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v6, v2, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 371
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 372
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 374
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1402(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;I)I

    .line 378
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    .line 379
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    int-to-double v3, p1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v6

    double-to-int p1, v3

    .line 380
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {v0, v2, v2, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 381
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 382
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 383
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 425
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 426
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_0

    .line 353
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    .line 355
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2, v6}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 360
    :cond_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte p1, p1, v4

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 361
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    float-to-double v1, p1

    invoke-static {v1, v2, v6}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 348
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 430
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    goto :goto_0

    .line 435
    :cond_9
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    :cond_a
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_0
    return-void
.end method
