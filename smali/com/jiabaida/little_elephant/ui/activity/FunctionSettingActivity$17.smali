.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;
.super Ljava/lang/Object;
.source "FunctionSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 413
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 418
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result p2

    or-int/lit16 p2, p2, 0x100

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    goto :goto_0

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result p2

    and-int/lit16 p2, p2, -0x101

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 422
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$17;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)V

    return-void
.end method
