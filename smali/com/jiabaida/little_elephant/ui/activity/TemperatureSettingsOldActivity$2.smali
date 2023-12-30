.class Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;
.super Landroid/os/Handler;
.source "TemperatureSettingsOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 175
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_5

    const/16 p1, 0x7918

    if-eq v0, p1, :cond_4

    const-string p1, "0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 353
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 355
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 357
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 358
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 344
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 346
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 347
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 348
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 349
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 334
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 336
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 338
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 340
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 312
    :pswitch_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 318
    iget-object v1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 319
    iput-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 321
    :cond_0
    iget-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 323
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 326
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 327
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 330
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 302
    :pswitch_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 304
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 305
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 306
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 308
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 293
    :pswitch_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 294
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 295
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 296
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 297
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 298
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 283
    :pswitch_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 285
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 287
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 289
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 273
    :pswitch_7
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 274
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 275
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 276
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 277
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$3000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 279
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 264
    :pswitch_8
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 265
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 266
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 267
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 268
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2800(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 269
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 243
    :pswitch_9
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 248
    iget-object v1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 249
    iput-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 251
    :cond_2
    iget-object p1, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 252
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 253
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_1

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 256
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 257
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 258
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2600(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 260
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 234
    :pswitch_a
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 235
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 236
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 238
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 239
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 225
    :pswitch_b
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 227
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 229
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 230
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 362
    :cond_4
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$4500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_2

    .line 178
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 179
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v1, 0x3a

    const/4 v3, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 219
    :pswitch_c
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 220
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 215
    :pswitch_d
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 216
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 206
    :pswitch_e
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 207
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 202
    :pswitch_f
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 198
    :pswitch_10
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$802(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 199
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 194
    :pswitch_11
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$602(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 195
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 185
    :pswitch_12
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 186
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 181
    :pswitch_13
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$002(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;I)I

    .line 182
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 210
    :cond_6
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$1500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    const-string v1, ".0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
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
    .packed-switch 0x18
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
