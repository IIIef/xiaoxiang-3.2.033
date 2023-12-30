.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;
.super Landroid/os/Handler;
.source "SystemSettingsOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_1

    const/16 p1, 0x7918

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 212
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 214
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 216
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 217
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 204
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 205
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 207
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 208
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 195
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 197
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 198
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 184
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 185
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 186
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 188
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 165
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v1, 0x16

    if-eq v0, v1, :cond_5

    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d01
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
