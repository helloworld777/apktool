.class Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimpleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

.field tv_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;->this$1:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const v0, 0x7f0c0079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f0c007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    return-void
.end method
