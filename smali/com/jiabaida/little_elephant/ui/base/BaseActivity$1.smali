.class Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->goToAppSetting(Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

.field final synthetic val$isToOpenSettingFinal:Z

.field final synthetic val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p3, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->val$isToOpenSettingFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->settDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->val$listenerPositive:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 137
    :cond_0
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->val$isToOpenSettingFinal:Z

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/PermissionHelper;->goToSettingPermission(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
