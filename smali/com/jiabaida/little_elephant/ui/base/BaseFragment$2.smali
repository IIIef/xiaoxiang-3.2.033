.class Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;
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

.field final synthetic val$listenerNegative:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;->val$listenerNegative:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->access$000(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$2;->val$listenerNegative:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
