.class Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$1;
.super Ljava/lang/Object;
.source "BalanceSettingsOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;->finishActivity()V

    return-void
.end method
