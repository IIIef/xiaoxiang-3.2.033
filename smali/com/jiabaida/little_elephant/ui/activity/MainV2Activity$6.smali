.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8

    const p1, 0x7f08015f

    if-ne p2, p1, :cond_0

    .line 713
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f080160

    const/4 v1, 0x4

    const/4 v2, 0x3

    const v3, 0x7f080163

    const/4 v4, 0x2

    const v5, 0x7f080162

    const v6, 0x7f080161

    if-ne p2, v0, :cond_6

    .line 715
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p2

    const-string v0, "sp_key_ble_auth"

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/util/SPUtils;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppKey : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " --PswStatus-- "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "--bleAuto-- "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "xzx"

    invoke-static {v7, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-boolean v0, Lcom/jiabaida/little_elephant/util/BleUtils;->isHaveAppKey:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/jiabaida/little_elephant/util/BleUtils;->blePswStatus:I

    const/16 v7, 0x2716

    if-ne v0, v7, :cond_5

    if-nez p2, :cond_5

    .line 719
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    const v7, 0x7f0d0087

    invoke-virtual {v0, v7}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v0, v7}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 720
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p2, p2, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/view/MyViewPager;->getCurrentItem()I

    move-result p2

    if-nez p2, :cond_1

    .line 721
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 722
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 723
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 724
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 725
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 726
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 727
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    :cond_4
    :goto_0
    return-void

    .line 731
    :cond_5
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_6
    if-ne p2, v6, :cond_7

    .line 733
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1, v4}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_7
    if-ne p2, v5, :cond_8

    .line 735
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_8
    if-ne p2, v3, :cond_9

    .line 737
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->mVpUserHome:Lcom/jiabaida/little_elephant/view/MyViewPager;

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/view/MyViewPager;->setCurrentItem(I)V

    :cond_9
    :goto_1
    return-void
.end method
