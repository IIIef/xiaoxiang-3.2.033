.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

.field final synthetic val$forced0:I

.field final synthetic val$updateUrl0:Ljava/lang/String;

.field final synthetic val$updateUrl1:Ljava/lang/String;

.field final synthetic val$version0:Ljava/lang/String;

.field final synthetic val$version1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$forced0:I

    iput-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl0:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl1:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$version0:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$version1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$forced0:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl1:Ljava/lang/String;

    :goto_0
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$version0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$version1:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p1, p2, :cond_0

    .line 380
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl0:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$2;->val$updateUrl1:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
