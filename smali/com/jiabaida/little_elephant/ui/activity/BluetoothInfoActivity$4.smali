.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;
.super Landroid/os/Handler;
.source "BluetoothInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->timeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 p1, 0x64

    if-eq v0, p1, :cond_3

    const/16 p1, 0x75a5

    const/16 v1, 0x10

    if-eq v0, p1, :cond_2

    const/16 p1, 0x75da

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, p1, :cond_1

    const/16 p1, 0x75e0

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v1, [B

    .line 322
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    invoke-static {v0, v3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "gb2312"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    array-length p1, p1

    sub-int/2addr p1, v3

    new-array v0, p1, [B

    .line 317
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v4}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v4

    iget-object v4, v4, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr2([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v2, 0x6

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/16 v2, 0x8

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/16 v2, 0x9

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->returnContent:[B

    const/16 v2, 0xa

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;F)F

    .line 277
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->hideLoading()V

    goto :goto_0

    .line 282
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 283
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v1, 0x15

    if-eq v0, v1, :cond_7

    const/16 v1, 0x16

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1302(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;I)I

    goto :goto_0

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
