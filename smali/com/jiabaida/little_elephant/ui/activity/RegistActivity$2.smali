.class Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$2;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->initView(Landroid/os/Bundle;)V
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

    .line 101
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/RegistActivity;->finishActivity()V

    return-void
.end method
