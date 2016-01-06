.class Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DifferentMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

.field tv_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;->this$1:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const v0, 0x7f0c0079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f0c007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    return-void
.end method
