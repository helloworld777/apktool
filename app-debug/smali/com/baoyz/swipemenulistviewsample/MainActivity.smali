.class public Lcom/baoyz/swipemenulistviewsample/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    :goto_0
    return-void

    .line 22
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistviewsample/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistviewsample/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x7f0c006d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistviewsample/MainActivity;->setContentView(I)V

    .line 17
    return-void
.end method
