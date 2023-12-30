.class Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

.field final synthetic val$isToOpenSetting:Z

.field final synthetic val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p3, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->val$isToOpenSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->access$000(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 126
    :cond_0
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->val$isToOpenSetting:Z

    if-eqz p1, :cond_1

    .line 127
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    const/16 v0, 0x41a

    invoke-virtual {p2, p1, v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
