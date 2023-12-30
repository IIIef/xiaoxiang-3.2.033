.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$1;
.super Ljava/lang/Object;
.source "InitSettingsOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->finishActivity()V

    return-void
.end method
