.class Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
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

    .line 74
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {v2}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->finishActivity()V

    return-void
.end method
