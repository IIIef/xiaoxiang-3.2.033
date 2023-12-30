.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;
.super Landroid/os/Handler;
.source "BalanceSettingsOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 171
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p1, 0x2

    const-string v2, ""

    if-eq v0, p1, :cond_1

    const/16 p1, 0x7918

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 223
    :pswitch_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setWriteMode()V

    .line 224
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z

    .line 225
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_3

    .line 217
    :pswitch_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setBalanceEnable(I)V

    .line 218
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setWriteMode()V

    .line 219
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z

    .line 220
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_3

    .line 208
    :pswitch_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 209
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 210
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 212
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 213
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 199
    :pswitch_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 201
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 203
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 204
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 228
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$1300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto/16 :goto_3

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getBalanceMode()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;Z)Z

    .line 186
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 187
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Z

    move-result p1

    const v0, 0x7f0d00d7

    const v4, 0x7f0d011d

    if-eqz p1, :cond_3

    .line 188
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v5, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0, v3, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v5, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v6, v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0, v3, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->listBalanceType:Ljava/util/List;

    new-instance v0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {v5, v4}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v1, v2}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/Switch;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getBalanceEnable()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 174
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 175
    iget-char v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmd:C

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7d01
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
