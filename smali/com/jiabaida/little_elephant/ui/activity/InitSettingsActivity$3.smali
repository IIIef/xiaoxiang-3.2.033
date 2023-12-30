.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;
.super Ljava/lang/Object;
.source "InitSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->initView(Landroid/os/Bundle;)V
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

    .line 184
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 188
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

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

    if-nez p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 192
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    long-to-int v2, v1

    const v1, 0x7fff8

    const/16 v3, 0x50

    invoke-static {v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$102(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;Z)Z

    .line 193
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showLoading()V

    .line 195
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    const/16 v0, 0x7d01

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 196
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "800~524280"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showDefaultMsg(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->hideLoading()V

    .line 208
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    const v0, 0x7f0d016e

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;->showMsg(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
