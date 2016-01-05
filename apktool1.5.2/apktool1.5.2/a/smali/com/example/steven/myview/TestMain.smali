.class public Lcom/example/steven/myview/TestMain;
.super Ljava/lang/Object;
.source "TestMain.java"


# instance fields
.field public mX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/steven/myview/TestMain;->mX:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 9
    new-instance v0, Lcom/example/steven/myview/TestMain;

    invoke-direct {v0}, Lcom/example/steven/myview/TestMain;-><init>()V

    .line 10
    .local v0, testMain:Lcom/example/steven/myview/TestMain;
    invoke-virtual {v0}, Lcom/example/steven/myview/TestMain;->test()V

    .line 11
    return-void
.end method


# virtual methods
.method public test()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method
