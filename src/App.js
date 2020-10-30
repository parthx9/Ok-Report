import { BrowserRouter } from 'react-router-dom';
import './App.css';
import MainComponent from './components/MainComponent';

function App() {
  return (
    <BrowserRouter>
      <div>
        <MainComponent/>
      </div> 
    </BrowserRouter>
  );
}

export default App;
