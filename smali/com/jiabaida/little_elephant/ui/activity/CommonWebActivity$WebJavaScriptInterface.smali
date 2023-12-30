.class Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;
.super Ljava/lang/Object;
.source "CommonWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebJavaScriptInterface"
.end annotation


# instance fields
.field public mContxt:Landroid/app/Activity;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/app/Activity;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;->mContxt:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public wxPay(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
