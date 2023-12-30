.class Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;
.super Landroid/os/Handler;
.source "CapacityVoltmeterOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 325
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 327
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 328
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 316
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 318
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 319
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 307
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 309
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 310
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 296
    :pswitch_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 299
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 300
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 301
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 287
    :pswitch_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 289
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 291
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 292
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :pswitch_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 280
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 282
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 283
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :pswitch_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 271
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 273
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 274
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 260
    :pswitch_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 262
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 264
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 265
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 251
    :pswitch_8
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 253
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 255
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 256
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :pswitch_9
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 245
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 246
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 247
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    :pswitch_a
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 235
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 237
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 238
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 224
    :pswitch_b
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 226
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 228
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 229
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 184
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 213
    :pswitch_c
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :pswitch_d
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 192
    :pswitch_e
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :pswitch_f
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :pswitch_10
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :pswitch_11
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :pswitch_12
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :pswitch_13
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :pswitch_14
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :pswitch_15
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d01
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
