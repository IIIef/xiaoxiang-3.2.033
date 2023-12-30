.class Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 659
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 653
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity$8;->this$0:Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;->hideLoading()V

    return-void
.end method
