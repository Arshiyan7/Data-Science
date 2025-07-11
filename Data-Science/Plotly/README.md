Plotly is a Python visualization library for creating interactive and dynamic plots. It supports various chart types like line, scatter, bar, pie, and 3D plots, making data visualization more intuitive and engaging. 
# Plotly Quick Revision Notes 

## data visualization 
### Basic Plotly Setup
import plotly.express as px → Import Plotly Express
import plotly.graph_objects as go → Import Graph Objects
fig.show() → Display the figure

### Common Plotly Plots
Line Plot
px.line(df, x='col1', y='col2', title='Title') → Simple Line Plot
fig.update_traces(mode="markers+lines") → Add markers

`Scatter Plot`
px.scatter(df, x='col1', y='col2', color='col3') → Scatter Plot with Color
fig.update_traces(marker=dict(size=10)) → Change Marker Size

`Bar Chart`
px.bar(df, x='col1', y='col2', color='col3') → Grouped Bar Chart
fig.update_layout(barmode='stack') → Stacked Bars

`Pie Chart`
px.pie(df, names='col1', values='col2') → Simple Pie Chart
fig.update_traces(textinfo='percent+label') → Show Percentage

`Histogram`
px.histogram(df, x='col1', nbins=20, color='col2') → Histogram with Bins
fig.update_layout(bargap=0.1) → Adjust Bar Spacing

### Advanced Plots
`3D Plots`
px.scatter_3d(df, x='col1', y='col2', z='col3', color='col4') → 3D Scatter
px.line_3d(df, x='col1', y='col2', z='col3') → 3D Line Plot

`Choropleth Map`
px.choropleth(df, locations='country', locationmode='country names', color='value') → Map Visualization

`Tree & Sunburst`
px.treemap(df, path=['col1', 'col2'], values='col3') → Hierarchical Tree Map
px.sunburst(df, path=['col1', 'col2'], values='col3') → Sunburst Chart

`Parallel Plots`
px.parallel_coordinates(df, color='col1') → Parallel Coordinates Plot
px.parallel_categories(df, color='col1') → Parallel Categories

`Customization & Styling`
fig.update_layout(title="Custom Title") → Change Title
fig.update_traces(marker=dict(color='blue', size=10)) → Customize Markers
fig.update_layout(template="plotly_dark") → Dark Theme

`Combining Multiple Traces`
fig.add_trace(go.Scatter(x=df['col1'], y=df['col2'], mode='lines', name='New Line')) → Add Extra Line
fig.add_trace(go.Bar(x=df['col1'], y=df['col2'], name='Extra Bar')) → Add Extra Bar

