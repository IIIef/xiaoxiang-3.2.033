.class Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;
.super Ljava/lang/Object;
.source "ParamsFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/ParamsAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILcom/jiabaida/little_elephant/entity/ParamsItemBean;)V
    .locals 2

    .line 344
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getId()I

    .line 346
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00b5

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothPasswordActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 351
    :cond_0
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00ce

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d0107

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 357
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/InitSettingsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    :cond_2
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 366
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->canableOperate()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 370
    :cond_4
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 372
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    :cond_5
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 378
    :cond_6
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 380
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    :cond_7
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 385
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 387
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ElectricSettingsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    :cond_8
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 391
    :cond_9
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 393
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 395
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/TemperatureSettingsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    :cond_a
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    :cond_b
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 401
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 403
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/BalanceSettingsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    :cond_c
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    :cond_d
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 409
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 411
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/CapacityVoltmeterOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    :cond_e
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 415
    :cond_f
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00e8

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 417
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 420
    :cond_10
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 422
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 424
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    :cond_11
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    :cond_12
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 430
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->isOldVersion()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 432
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/SystemSettingsOldActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    :cond_13
    sget-object v0, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ParamsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_14
    :goto_0
    return-void
.end method
