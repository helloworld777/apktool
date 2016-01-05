.class public Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private mContext:Landroid/content/Context;

.field private title:Ljava/lang/String;

.field private titleColor:I

.field private titleSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->titleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->titleSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->width:I

    return v0
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    .line 86
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->id:I

    .line 34
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .parameter "titleColor"

    .prologue
    .line 49
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->titleColor:I

    .line 50
    return-void
.end method

.method public setTitleSize(I)V
    .locals 0
    .parameter "titleSize"

    .prologue
    .line 45
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->titleSize:I

    .line 46
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 93
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->width:I

    .line 94
    return-void
.end method
