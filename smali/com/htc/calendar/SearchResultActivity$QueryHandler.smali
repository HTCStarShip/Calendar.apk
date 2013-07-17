.class Lcom/htc/calendar/SearchResultActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/SearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/SearchResultActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    .line 80
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const v4, 0x7f080022

    .line 85
    const-string v1, "SearchResultActivity"

    const-string v2, "onQueryComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/SearchResultActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    const-string v1, "SearchResultActivity"

    const-string v2, "onQueryComplete, !isFinishing,,next.setCursor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "SearchResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete, cursor:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_0

    const-string v1, "isNull"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p3, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    .line 92
    const/4 v1, -0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->move(I)Z

    .line 93
    const-string v1, "SearchResultActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nResultCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    iget v3, v3, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    iget v1, v1, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    if-lez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    const v2, 0x2020054

    invoke-virtual {v1, v2}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    iget v3, v3, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    const v2, 0x2020053

    invoke-virtual {v1, v2}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    iget v3, v3, Lcom/htc/calendar/SearchResultActivity;->nResultCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #getter for: Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$000(Lcom/htc/calendar/SearchResultActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #getter for: Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$000(Lcom/htc/calendar/SearchResultActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventListView;

    .line 109
    .local v0, next:Lcom/htc/calendar/EventListView;
    invoke-virtual {v0, p3}, Lcom/htc/calendar/EventListView;->setCursor(Landroid/database/Cursor;)V

    .line 110
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #getter for: Lcom/htc/calendar/SearchResultActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$000(Lcom/htc/calendar/SearchResultActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 111
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->selectTime()V
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$200(Lcom/htc/calendar/SearchResultActivity;)V

    .line 118
    .end local v0           #next:Lcom/htc/calendar/EventListView;
    :goto_2
    return-void

    .line 89
    :cond_0
    const-string v1, "not null"

    goto/16 :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->showEmpty()V
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$100(Lcom/htc/calendar/SearchResultActivity;)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$QueryHandler;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->showEmpty()V
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$100(Lcom/htc/calendar/SearchResultActivity;)V

    goto :goto_1

    .line 113
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_4
    const/4 p3, 0x0

    goto :goto_2
.end method
