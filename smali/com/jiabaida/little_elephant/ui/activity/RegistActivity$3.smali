.class Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->finishActivity()V

    return-void
.end method
