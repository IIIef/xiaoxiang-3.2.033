.class Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;
.super Ljava/lang/Object;
.source "InitSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;
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

    .line 448
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 456
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity$9;->this$0:Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;->hideLoading()V

    return-void
.end method
