.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 671
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const v0, 0x7f050099

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 697
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    const v2, 0x7f080163

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 698
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto/16 :goto_0

    .line 693
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    const v2, 0x7f080162

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 694
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_0

    .line 689
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    const v2, 0x7f080161

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 690
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_0

    .line 685
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    const v2, 0x7f080160

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 686
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_0

    .line 681
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Landroid/widget/RadioGroup;

    move-result-object p1

    const v2, 0x7f08015f

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 682
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$5;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :goto_0
    return-void
.end method
