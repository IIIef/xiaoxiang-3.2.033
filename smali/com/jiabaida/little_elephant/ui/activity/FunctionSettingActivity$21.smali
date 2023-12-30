.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;
.super Ljava/lang/Object;
.source "FunctionSettingActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->onClickFunction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 0

    .line 680
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$1200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object p3, p3, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->listBalanceType:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->getItemName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const p3, 0x7f0d00d7

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    goto :goto_0

    .line 685
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;)I

    move-result p2

    and-int/lit8 p2, p2, -0x9

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$202(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)I

    .line 688
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity$21;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;I)V

    return-void
.end method
