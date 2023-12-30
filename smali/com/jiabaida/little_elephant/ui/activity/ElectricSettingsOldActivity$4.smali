.class Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;
.super Ljava/lang/Object;
.source "ElectricSettingsOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BottomSheetListAdapter$BottomItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->ShowDialog(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

.field final synthetic val$mListData:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    iput p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$type:I

    iput-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$mListData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheck(Landroid/view/View;IZ)V
    .locals 1

    .line 649
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->showLoading()V

    .line 653
    iget p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$type:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 654
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1202(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 656
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1402(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    .line 658
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1602(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    if-ne p1, p3, :cond_3

    .line 660
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$1802(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;I)I

    .line 662
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p1

    const/16 p3, 0x7d07

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setNextMsg(I)V

    .line 663
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$4500(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 665
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$title:Ljava/lang/String;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    const v0, 0x7f0d0114

    invoke-virtual {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 666
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2100(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$mListData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 668
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$title:Ljava/lang/String;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    const v0, 0x7f0d0113

    invoke-virtual {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 670
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2200(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$mListData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 671
    :cond_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$title:Ljava/lang/String;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    const v0, 0x7f0d0119

    invoke-virtual {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 673
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$mListData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 674
    :cond_6
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$title:Ljava/lang/String;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    const v0, 0x7f0d011a

    invoke-virtual {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 675
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;->access$2000(Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity$4;->val$mListData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method
