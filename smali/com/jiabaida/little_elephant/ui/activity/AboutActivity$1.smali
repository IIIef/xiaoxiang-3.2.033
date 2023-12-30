.class Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/AboutActivity;->finishActivity()V

    return-void
.end method
