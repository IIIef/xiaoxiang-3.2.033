.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;
.super Ljava/lang/Object;
.source "FunctionSettingOldActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->showMsg(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setNtc3(I)V

    .line 189
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    const/16 p2, 0x7d02

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 190
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :cond_1
    return-void
.end method
